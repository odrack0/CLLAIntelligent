SELECT 
	CP.idPedContribuciones,
	CP.idReferencia,
	CP.idContribucion,
	C.ClaveContribucion,
	C.ct_Descripcion,
	C.Abreviacion,
	CP.PorcentajeAplicar,
	CP.idFormaPago,
	FP.ClaveFormaPago,
	FP.fp_Descripcion,
	CP.ImporteContribucion,
	CP.idTipoTasa,
	T.TipoTasa,
	T.Descripcion AS TasaDescripcion,
	CP.TasaContribucion,
	CP.CaracteristicasCalculo
FROM BitacoraExtraccionSysExpertPedimento BEP
	JOIN Ped_ContribucionesPedimento      CP ON (BEP.idReferencia =  CP.idReferencia)
	JOIN Contribuciones                   C  ON (CP.idContribucion = C.idContribucion)
	JOIN FormasDePago                     FP ON (CP.idFormaPago    = FP.idFormapago)
	JOIN Tasas                            T  ON (CP.idTipoTasa     = T.idTipo)
ORDER BY 
	idReferencia