--Extraccion de situaciones unicas
DECLARE @SituacionesUnicas TABLE(idReferencia INT, idTrafico INT)
INSERT INTO @SituacionesUnicas
	SELECT 
		idReferencia,
		MAX(idTrafico)
	FROM ExtraccionSysExpertTrafico 
	WHERE ClaveSituacion = 93 	
	GROUP BY
		idReferencia

--Reunion de informacion necesaria
DECLARE @Situaciones TABLE (idReferencia INT, Dato VARCHAR(50), Observaciones VARCHAR(250), NombreEjecuto VARCHAR(50), FechaMovimiento DATETIME, HoraMovimiento VARCHAR(8))
INSERT INTO @Situaciones
	SELECT
		T.idReferencia,
		T.Dato,
		T.Observaciones,
		T.NombreEjecuto,
		T.FechaMovimiento,
		T.HoraMovimiento
	FROM @SituacionesUnicas				    S
		JOIN ExtraccionSysExpertTrafico T ON (S.idTrafico = T.idTrafico)

--Transformacion de la informaion
DECLARE @Firmas TABLE (idReferencia INT, FechaMovimiento DATETIME, HoraMovimiento VARCHAR(8), NombreEjecutvo VARCHAR(50), OrigenEjecucion VARCHAR(50), Firma VARCHAR(250))
INSERT INTO @Firmas
	SELECT
		idReferencia,
		FechaMovimiento,
		HoraMovimiento,
		NombreEjecuto,
		CASE
			WHEN CHARINDEX('REMESA', Dato) > 0 THEN
				'REMESA'
			ELSE
				'PEDIMENTO'
		END,
		CASE
			WHEN CHARINDEX('REMESA', Dato) > 0 THEN
				SUBSTRING(Observaciones, CHARINDEX(':', Observaciones) + 1, LEN(Observaciones) - CHARINDEX(':', Observaciones))
			ELSE
				SUBSTRING(Dato, CHARINDEX(':', Dato) + 1, LEN(Dato) - CHARINDEX(':', Dato))
		END
	FROM @Situaciones

--Carga de informacion
INSERT INTO CargaSysExpertTraficoPedimentoRemesaFirmaManual
	SELECT * FROM @Firmas

--Eliminar informacion procesada
DELETE ExtraccionSysExpertTrafico WHERE ClaveSituacion = 93 	