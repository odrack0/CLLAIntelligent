--Extraccion de situaciones unicas
DECLARE @SituacionesUnicas TABLE(idReferencia INT, idTrafico INT)
INSERT INTO @SituacionesUnicas
	SELECT 
		idReferencia,
		MAX(idTrafico)
	FROM ExtraccionSysExpertTrafico 
	WHERE ClaveSituacion = 12 	
	GROUP BY
		idReferencia

--Reunion de informacion necesaria
DECLARE @Situaciones TABLE (idReferencia INT, Observaciones VARCHAR(250), NombreEjecuto VARCHAR(50), FechaMovimiento DATETIME, HoraMovimiento VARCHAR(8))
INSERT INTO @Situaciones
	SELECT
		T.idReferencia,
		T.Observaciones,
		T.NombreEjecuto,
		T.FechaMovimiento,
		T.HoraMovimiento
	FROM @SituacionesUnicas				S
		JOIN ExtraccionSysExpertTrafico T ON (S.idTrafico = T.idTrafico)

----Transformacion de la informaion
DECLARE @ArchivosCreados TABLE (idReferencia INT, Archivo VARCHAR(250), NombreEjecuto VARCHAR(50), FechaMovimiento DATETIME, HoraMovimiento VARCHAR(8))
INSERT INTO @ArchivosCreados
	SELECT
		idReferencia,
		SUBSTRING(Observaciones, CHARINDEX(':', Observaciones) + 1, LEN(Observaciones) - CHARINDEX(':', Observaciones)),
		NombreEjecuto,
		FechaMovimiento,
		HoraMovimiento
	FROM @Situaciones

INSERT INTO CargaSysExpertTraficoPedimentoValidacion
	SELECT
		idReferencia,
		FechaMovimiento,
		HoraMovimiento,
		NombreEjecuto,
		Archivo
	FROM @ArchivosCreados

--Eliminar informacion procesada
DELETE ExtraccionSysExpertTrafico WHERE ClaveSituacion = 12 
