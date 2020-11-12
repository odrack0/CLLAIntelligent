SELECT
	PII.idReferencia,
	M.idPedParteII,
	M.idPedPIIMercancia,	
	M.Mercancia,
	M.CantidadComercial,
	M.CantidadTarifa,
	M.idUnidad,
	UMC.ClaveUnidad AS ClaveUnidadComercial,
	UMC.Abreviacion AS AbreviacionUnidadComercial,
	UMC.Descripcion AS DescripcionUnidadComercial,
	M.idUnidadTarifa,
	UMT.ClaveUnidad AS ClaveUnidadTarifa,
	UMT.Abreviacion AS AbreviacionUnidadTarifa,
	UMT.Descripcion AS DescripcionUnidadTarifa,
	M.Peso,
	M.CantidadEnKg
FROM BitacoraExtraccionSysExpertPedimento BEP 
    JOIN Ped_PartesII                     PII  ON (PII.idReferencia = BEP.idReferencia)
	JOIN Ped_PartesIIMercancias           M    ON (PII.idPedParteII = M.idPedParteII)
	LEFT JOIN UnidadesMedida              UMC  ON (M.idUnidad       =  UMC.idUnidad)
	LEFT JOIN UnidadesMedida              UMT  ON (UMC.idUnidad     = UMT.idUnidad)
WHERE
	BEP.FechaExtraccionPedimentoParteIIMercancia IS NULL


