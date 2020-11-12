SELECT 
	PII.idPedParteII,
	PII.idReferencia,
	PII.NoParteII,
	PII.DatosVehiculo
FROM BitacoraExtraccionSysExpertPedimento BEP	
	JOIN Ped_PartesII                     PII  ON (BEP.idReferencia = PII.idReferencia)
WHERE
	BEP.FechaExtraccionPedimentoParteII IS NULL