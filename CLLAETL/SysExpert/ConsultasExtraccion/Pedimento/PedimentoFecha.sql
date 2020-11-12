SELECT
	PF.idPedFechas,
	PF.idReferencia,
	PF.idFecha,
	F.Clave,
	F.Descripcion,
	F.DescImpresion,
	PF.Fecha
FROM BitacoraExtraccionSysExpertPedimento BEP
	JOIN Ped_Fechas                       PF ON (BEP.idReferencia = PF.idReferencia)
	JOIN Fechas                           F  ON (PF.idFecha       = F.idFecha)
WHERE
	BEP.FechaExtraccionPedimentoFecha IS NULL