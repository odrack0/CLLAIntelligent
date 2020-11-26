SELECT 	
	ET.idTrafico,
	idReferencia,
	FechaMovimiento,
	HoraMovimiento,
	NombreEjecuto,
	CASE
	WHEN ClaveSituacion = 1 THEN
	'PEDIMENTOS'
	ELSE
	'REMESAS'
	END AS Origen,
	GETDATE() AS FechaHoraActual
FROM BitacoraCargaSysExpertTrafico  BCT
	JOIN ExtraccionSysExpertTrafico ET  ON (BCT.idTrafico = ET.idTrafico)
WHERE 
	BCT.FechaCargaSituacion IS NULL AND
	ET.ClaveSituacion = 1 OR ET.ClaveSituacion = 2  
 

  