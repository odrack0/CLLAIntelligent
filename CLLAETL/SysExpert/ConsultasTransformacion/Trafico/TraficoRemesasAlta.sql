--Extraccion previa
DECLARE @AltaRemesasPrevia TABLE (idReferencia INT, idRemesa INT, NumeroRemesa INT, FechaMovimiento DATETIME, HoraMovimiento VARCHAR(8), NombreEjecuto VARCHAR(50), Dato VARCHAR(50))

INSERT INTO @AltaRemesasPrevia
	SELECT 
		idReferencia,
		idRemesa,
		NumeroRemesa,
		FechaMovimiento,
		HoraMovimiento,
		NombreEjecuto,
		Dato
	FROM ExtraccionSysExpertTrafico WHERE ClaveSituacion = 3 AND idReferencia IS NOT NULL

--Limpieza de datos
DELETE @AltaRemesasPrevia WHERE idRemesa IS NULL AND DATO = 'SIN CONSECUTIVO DE REMESA' 

--Transformacion de datos
UPDATE @AltaRemesasPrevia
SET NumeroRemesa = 
	CASE
		WHEN NumeroRemesa IS NULL AND CHARINDEX(':', Dato) > 0 THEN
			CAST(SUBSTRING(Dato, CHARINDEX(':', Dato) + 1, LEN(Dato) - CHARINDEX(':', Dato)) AS INT)
		ELSE
			NumeroRemesa
	END

DECLARE @AltaRemesas TABLE (idReferencia INT, idRemesa INT, NumeroRemesa INT, FechaMovimiento DATETIME, HoraMovimiento VARCHAR(8), NombreEjecuto VARCHAR(50))
INSERT INTO @AltaRemesas
	SELECT 
		idReferencia,
		idRemesa,
		NumeroRemesa,
		FechaMovimiento,
		HoraMovimiento,
		NombreEjecuto
	FROM @AltaRemesasPrevia

--Carga de informacion
INSERT INTO CargaSysExpertTraficoRemesaAlta
	SELECT * FROM @AltaRemesas

--Eliminar informacion procesada
DELETE ExtraccionSysExpertTrafico WHERE ClaveSituacion = 3 