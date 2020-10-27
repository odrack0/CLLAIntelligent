--Transformacion y carga de informacion
INSERT INTO CargaSysExpertTraficoPedimentoAlta
	SELECT 
		idReferencia,
		FechaMovimiento,
		HoraMovimiento,
		NombreEjecuto,
		CASE
			WHEN ClaveSituacion = 1 THEN
				'PEDIMENTOS'
			ELSE
				'REMESAS'
		END
	FROM ExtraccionSysExpertTrafico 
	WHERE 
		ClaveSituacion = 1 OR ClaveSituacion = 2  
	ORDER BY 
		FechaMovimiento 

--Eliminacion de informacion procesada
DELETE ExtraccionSysExpertTrafico WHERE ClaveSituacion = 1 OR ClaveSituacion = 2  