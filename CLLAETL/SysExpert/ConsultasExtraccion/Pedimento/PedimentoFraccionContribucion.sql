SELECT 
	PF.idReferencia,
	PF.idPedFraccion,
	PCF.idFracContribuciones,
	PCF.idContribucion,
	C.ClaveContribucion,
	C.Abreviacion,
	c.ct_Descripcion,
	PCF.PorcentajeAplicacion,
	PCF.idFormaPago,
	FP.ClaveFormaPago,
	FP.fp_Descripcion,
	PCF.idTipoTasa,
	T.TipoTasa,
	T.Descripcion AS DescripcionTasa,
	PCF.ImporteContribucion,
	PCF.TipoCuotaCompensatoria,
	PCF.TasaContribucion,
	PCF.PedimentoCompensacion,
	PCF.CaracteristicasCalculo
FROM BitacoraExtraccionSysExpertPedimento BEP
	JOIN Ped_Fraccion                     PF  ON (BEP.idReferencia   = PF.idReferencia)
	JOIN Ped_ContribucionesFraccion       PCF ON (PF.idPedFraccion   = PCF.idFraccion)
	JOIN Contribuciones                   C   ON (PCF.idContribucion = C.idContribucion)
	JOIN FormasDePago                     FP  ON (PCF.idFormaPago    = FP.idFormapago)
	JOIN Tasas                            T   ON (PCF.idTipoTasa     = T.idTipo)