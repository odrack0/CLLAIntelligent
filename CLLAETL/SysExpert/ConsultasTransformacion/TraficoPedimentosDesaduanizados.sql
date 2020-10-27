--Extraccion de situaciones unicas
DECLARE @SituacionesUnicas TABLE(idReferencia INT, idTrafico INT)
INSERT INTO @SituacionesUnicas
	SELECT 
		idReferencia,
		MAX(idTrafico)
	FROM ExtraccionSysExpertTrafico 
	WHERE ClaveSituacion = 92 	
	GROUP BY
		idReferencia
--Reunion de informacion necesaria
DECLARE @Situaciones TABLE (idReferencia INT, Dato VARCHAR(50), FechaMovimiento DATETIME, HoraMovimiento VARCHAR(8))
INSERT INTO @Situaciones
	SELECT
		T.idReferencia,
		T.Dato,
		T.FechaMovimiento,
		T.HoraMovimiento
	FROM @SituacionesUnicas				    S
		JOIN ExtraccionSysExpertTrafico T ON (S.idTrafico = T.idTrafico)

--Transformacion de la informaion
DECLARE @PedimentosDesaduanizados TABLE (idReferencia INT, Desaduanamiento VARCHAR(50), FechaMovimiento DATETIME, HoraMovimiento VARCHAR(8))
INSERT INTO @PedimentosDesaduanizados
	SELECT
		idReferencia,
		SUBSTRING(Dato, CHARINDEX(':', Dato) + 1, LEN(Dato) - CHARINDEX(':', Dato)),
		FechaMovimiento,
		HoraMovimiento
	FROM @Situaciones

--Carga de informacion
INSERT INTO CargaSysExpertTraficoPedimentoDesaduanamiento
	SELECT * FROM @PedimentosDesaduanizados 

--Eliminar informacion procesada
DELETE ExtraccionSysExpertTrafico WHERE ClaveSituacion = 92 
