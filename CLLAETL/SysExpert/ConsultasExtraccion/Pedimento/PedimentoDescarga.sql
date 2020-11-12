SELECT 
	PD.idDescargasPed,
	PD.idReferencia,
	PD.PatenteOriginal,
	PD.PedimentoOriginal,
	PD.idAduanaOriginal,
	A.ClaveAduana,
	A.NombreAduana,
	PD.FechaOriginal,
	PD.FechaDescarga,
	PD.FraccionOriginal,
	PD.CantidadUMC,
	PD.idUMC,
	UM.ClaveUnidad,
	UM.Descripcion AS DescripcionUnidad,
	UM.Abreviacion AS AbreviacionUnidad,
	PD.FechaPago
FROM BitacoraExtraccionSysExpertPedimento BEP
	JOIN Ped_Descargas                    PD  ON (BEP.idReferencia    = PD.idReferencia)
	JOIN Aduanas                          A   ON (PD.idAduanaOriginal = A.idAduana)
	JOIN UnidadesMedida                   UM  ON (PD.idUMC            = UM.idUnidad)
WHERE
	BEP.FechaExtraccionPedimentoDescarga IS NULL
