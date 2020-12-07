SELECT
	DR.idDiferenciasRect,
	DR.idReferencia,
	DR.idContribucion,
	C.ClaveContribucion,
	C.Abreviacion,
	C.ct_Descripcion,
	DR.idFormaPago,
	FP.ClaveFormaPago,
	FP.fp_Descripcion,
	DR.Importe
FROM BitacoraExtraccionSysExpertPedimento BEP
	JOIN Ped_DiferenciasRectificacion     DR ON (BEP.idReferencia  = DR.idReferencia)
	JOIN Contribuciones                   C  ON (DR.idContribucion = C.idContribucion)
	JOIN FormasDePago                     FP ON (DR.idFormaPago    =  FP.idFormapago)