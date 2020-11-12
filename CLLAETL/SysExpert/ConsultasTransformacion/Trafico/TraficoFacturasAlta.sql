--Transformacion y carga de informacion
INSERT INTO CargaSysExpertTraficoFacturaAlta
	SELECT 
		idReferencia,
		idFactura,
		idGuia,
		GuiaMaster,
		GuiaHouse,
		FechaMovimiento,
		HoraMovimiento,
		NombreEjecuto,
		SUBSTRING(Observaciones, CHARINDEX(':', Observaciones) + 1, LEN(Observaciones) - CHARINDEX(':', Observaciones))
	FROM ExtraccionSysExpertTrafico 
		WHERE ClaveSituacion = 14
	ORDER BY 
		FechaMovimiento
--Eliminar informacion procesada
DELETE ExtraccionSysExpertTrafico WHERE ClaveSituacion = 14