--Extraccion de situaciones unicas
DECLARE @SituacionesUnicas TABLE(idReferencia INT, idTrafico INT)
INSERT INTO @SituacionesUnicas
	SELECT 
		idReferencia,
		MAX(idTrafico)
	FROM ExtraccionSysExpertTrafico 
	WHERE ClaveSituacion = 8 	
	GROUP BY
		idReferencia

--Reunion de informacion necesaria
DECLARE @Situaciones TABLE (idReferencia INT, FechaMovimiento DATETIME, HoraMovimiento VARCHAR(8), NombreEjecuto  VARCHAR(50))
INSERT INTO @Situaciones
	SELECT
		T.idReferencia,	
		T.FechaMovimiento,
		T.HoraMovimiento,
		T.NombreEjecuto
	FROM @SituacionesUnicas				    S
		JOIN ExtraccionSysExpertTrafico T ON (S.idTrafico = T.idTrafico)
--CargaInformacion

INSERT INTO CargaSysExpertTraficoPedimentoImpresion
	SELECT * FROM @Situaciones 

--Eliminar informacion procesada
DELETE ExtraccionSysExpertTrafico WHERE ClaveSituacion = 8
