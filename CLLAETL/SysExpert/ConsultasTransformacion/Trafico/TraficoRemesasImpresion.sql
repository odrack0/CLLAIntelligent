--Extraccion de situaciones unicas
DECLARE @SituacionesUnicas TABLE(idTrafico INT, idReferencia INT, idRemesa INT, NumeroRemesa INT, Dato VARCHAR(50))
INSERT INTO @SituacionesUnicas
	SELECT 
		MAX(idTrafico),
		idReferencia,
		idRemesa,
		NumeroRemesa,
		Dato
	FROM ExtraccionSysExpertTrafico 
	WHERE ClaveSituacion = 9 	
	GROUP BY
		idReferencia,
		idRemesa,
		NumeroRemesa,
		Dato

--Reunion de informacion necesaria
DECLARE @Situaciones TABLE (idReferencia INT, idRemesa INT, NumeroRemesa INT, FechaMovimiento DATETIME, HoraMovimiento VARCHAR(8), NombreEjecuto VARCHAR(50), Dato VARCHAR(50))
INSERT INTO @Situaciones
	SELECT
		T.idReferencia,
		T.idRemesa,
		T.NumeroRemesa,
		T.FechaMovimiento,
		T.HoraMovimiento,
		T.NombreEjecuto,
		T.Dato
	FROM @SituacionesUnicas				    S
		JOIN ExtraccionSysExpertTrafico T ON (S.idTrafico = T.idTrafico)

--Transformacion de la informaion
DECLARE @RemesasImpresas TABLE (idReferencia INT, idRemesa INT, NumeroRemesa INT, FechaMovimiento DATETIME, HoraMovimiento VARCHAR(8), NombreEjecuto VARCHAR(50))
INSERT INTO @RemesasImpresas
	SELECT
		idReferencia,
		idRemesa,
		CASE
			WHEN NumeroRemesa IS NULL THEN
				CAST(SUBSTRING(Dato, CHARINDEX(':', Dato) + 1, LEN(Dato) - CHARINDEX(':', Dato)) AS INT)
			ELSE	
				NumeroRemesa
		END,
		FechaMovimiento,
		HoraMovimiento,
		NombreEjecuto
	FROM @Situaciones

--Cargar informacion
INSERT INTO CargaSysExpertTraficoRemesaImpresion
	SELECT * FROM @RemesasImpresas

--Eliminar informacion procesada
DELETE ExtraccionSysExpertTrafico WHERE ClaveSituacion = 9
