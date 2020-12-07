SELECT 
	PF.idReferencia,
	PF.idFraccion,
	PF.idPedFraccion,
	TG.Fraccion,
	PF.Descripcion,
	PF.Marca,
	PF.CantidadComercial,
	PF.idUMC,
	UMC.ClaveUnidad,
	UMC.Abreviacion,
	UMC.Descripcion AS DescripcionUMC,
	PF.CantidadTarifa,
	PF.idPaisOrigen,
	PO.ClaveM3     AS PaisOrigenClave,
	PO.NombrePais  AS PaisOrigenNombre,
	PF.idPaisVendedor,
	PV.ClaveM3     AS PaisVendedorClave,
	PV.NombrePais  AS PaisVendedorNombre,
	PF.idPaisMoneda,
	PM.ClaveM3     AS PaisMonedaClave,
	PM.NombrePais  AS PaisMonedaNombre,
	PM.ClaveMoneda AS PaisMonedaMoneda,
	PF.ImporteME,
	PF.ValorAgregado,
	PF.idValoracion,
	PF.idVinculacion,
	PF.ValorFactura,
	PF.ValorAduana,
	PF.ValorDolares,
	PF.LongDescripcion,
	PF.ORDEN,
	PF.idPaisProcedencia,
	PP.ClaveM3     AS PaisProcedenciaClave,
	PP.NombrePais  AS PaisProcedenciaNombre,
	PF.NuevasObservaciones 
FROM  BitacoraExtraccionSysExpertPedimento BEP
    JOIN Ped_Fraccion                      PF  ON (BEP.idReferencia     = PF.idReferencia)
	JOIN TIGIE                             TG  ON (PF.idFraccion        = TG.idFraccion)
	JOIN UnidadesMedida                    UMC ON (PF.idUMC             = UMC.idUnidad)
	LEFT JOIN Paises                       PO  ON (PF.idPaisOrigen      = PO.idPais)
	LEFT JOIN Paises                       PV  ON (PF.idPaisVendedor    = PV.idPais)
	LEFT JOIN Paises                       PM  ON (PF.idPaisMoneda      = PM.idPais)
	LEFT JOIN Paises                       PP  ON (PF.idPaisProcedencia = PP.idPais)