SELECT 
	PGC.idGastoComprobado,
	PGC.idGasto,
	GC.TipoGasto,
	GC.DescGasto,
	PGC.idGuia,
	PGC.DescGasto AS CONCEPTO,
	PGC.Folio,
	PGC.Monto,
	PGC.Cheque,
	PGC.idReferenciaGasto,
	PGC.FechaFolio,
	PGC.Iva
FROM  BitacoraExtraccionSysExpertPedimento  BEP
	JOIN Ped_GastosComprobados              PGC ON (BEP.idReferencia = PGC.idReferenciaGasto)
	JOIN GastosComprobados                  GC  ON (PGC.idGasto =  GC.idGasto)
WHERE
	BEP.FechaExtraccionPedimentoGastoComprobado IS NULL