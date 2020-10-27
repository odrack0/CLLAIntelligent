--SELECT * FROM ExtraccionSysExpertTrafico WHERE ClaveSituacion = 86 ORDER BY FechaMovimiento 995,807
--Extraccion de situaciones unicas
DECLARE @SituacionesUnicas TABLE(idReferencia INT, idTrafico INT)
INSERT INTO @SituacionesUnicas
	SELECT 
		idReferencia,
		MAX(idTrafico)
	FROM ExtraccionSysExpertTrafico 
	WHERE ClaveSituacion = 86 	
	GROUP BY
		idReferencia
--Reunion de informacion necesaria
DECLARE @Situaciones TABLE (idReferencia INT, Dato VARCHAR(50), FechaMovimiento DATETIME, HoraMovimiento VARCHAR(8), NombreEjecuto VARCHAR(MAX))
INSERT INTO @Situaciones
	SELECT
		T.idReferencia,
		T.Dato,
		T.FechaMovimiento,
		T.HoraMovimiento,
		T.NombreEjecuto
	FROM @SituacionesUnicas				    S
		JOIN ExtraccionSysExpertTrafico T ON (S.idTrafico = T.idTrafico)

DECLARE @PedimentosFirmados TABLE (idReferencia INT,  FechaMovimiento DATETIME, HoraMovimiento VARCHAR(8), NombreEjecuto VARCHAR(50), Firma VARCHAR(50))
INSERT INTO @PedimentosFirmados
	SELECT
		idReferencia,
		FechaMovimiento,
		HoraMovimiento,
		NombreEjecuto,
		SUBSTRING(Dato, CHARINDEX(':', Dato) + 1, LEN(Dato) - CHARINDEX(':', Dato))
	FROM @Situaciones

--Carga de informacion
INSERT INTO CargaSysExpertTraficoPedimentoFirma
	SELECT * FROM @PedimentosFirmados 

--Eliminar informacion procesada
DELETE ExtraccionSysExpertTrafico WHERE ClaveSituacion = 86
