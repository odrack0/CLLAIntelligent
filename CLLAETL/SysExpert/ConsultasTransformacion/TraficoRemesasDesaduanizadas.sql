--Extraccion de situaciones unicas
DECLARE @SituacionesUnicas TABLE(idTrafico INT, idReferencia INT, idRemesa INT, NumeroRemesa INT, Observaciones VARCHAR(50))
INSERT INTO @SituacionesUnicas
	SELECT 
		MAX(idTrafico),
		idReferencia,
		idRemesa,
		NumeroRemesa,
		Observaciones
	FROM ExtraccionSysExpertTrafico 
	WHERE ClaveSituacion = 91 	
	GROUP BY
		idReferencia,
		idRemesa,
		NumeroRemesa,
		Observaciones

--Reunion de informacion necesaria
DECLARE @Situaciones TABLE (idReferencia INT, idRemesa INT, NumeroRemesa INT,  FechaMovimiento DATETIME, HoraMovimiento VARCHAR(8), Dato VARCHAR(50), Observaciones VARCHAR(250))
INSERT INTO @Situaciones
	SELECT
		S.idReferencia,
		S.idRemesa,
		S.NumeroRemesa,
		T.FechaMovimiento,
		T.HoraMovimiento,
		T.Dato,
		S.Observaciones		
	FROM @SituacionesUnicas			    S
		JOIN ExtraccionSysExpertTrafico T ON (S.idTrafico = T.idTrafico)


--Transformacion de la informaion
DECLARE @RemesasDesaduanizadas TABLE (idReferencia INT, idRemesa INT, NumeroRemesa INT, Desaduanamiento VARCHAR(50), FechaMovimiento DATETIME, HoraMovimiento VARCHAR(8))
INSERT INTO @RemesasDesaduanizadas
	SELECT
		idReferencia,
		idRemesa,
		CASE
			WHEN NumeroRemesa IS NULL THEN
				SUBSTRING(Observaciones, CHARINDEX(':', Observaciones) + 1, LEN(Observaciones) - CHARINDEX(':', Observaciones))
			ELSE
				NumeroRemesa
		END,
		--NumeroRemesa,
		SUBSTRING(Dato, CHARINDEX(':', Dato) + 1, LEN(Dato) - CHARINDEX(':', Dato)),
		FechaMovimiento,
		HoraMovimiento
	FROM @Situaciones

--Carga de informacion
INSERT INTO CargaSysExpertTraficoRemesaDesaduanamiento
	SELECT * FROM @RemesasDesaduanizadas

--Eliminar informacion procesada
DELETE ExtraccionSysExpertTrafico WHERE ClaveSituacion = 91