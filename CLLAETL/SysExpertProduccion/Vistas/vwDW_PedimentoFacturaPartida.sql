USE [SysExpertBackup]

SELECT TOP 1000
			PEDPART.idPartida [idPartida]
           ,PEDPART.idFactura [idFactura]
           ,PEDPART.idParte [idParte]
           ,PEDPART.Descripcion [Descripcion]
           ,PEDPART.Marca [Marca]
           ,PEDPART.Modelo [Modelo]
           ,PEDPART.NoSerie [NoSerie]
           ,PEDPART.CantidadComercial [CantidadComercial]
           ,PEDPART.idUMC [idUMC]
           ,PEDPARTUM.ClaveUnidad [UnidadMedidaComercialClaveIUnidad]
           ,PEDPARTUM.Descripcion [UnidadMedidaComercialDescripcion]
           ,PEDPARTUM.Abreviacion [UnidadMedidaComercialAbreviacion]
           ,PEDPARTUM.Abreviacion2 [UnidadMedidaComercialAbreviacion2]
           ,PEDPARTUM.ClaveCOVE [UnidadMedidaComercialClaveCOVE]
           ,PEDPARTUM.UMCOVEValidas [UnidadMedidaComercialUMCOVEValidas]
           ,PEDPART.ImporteME [ImporteME]
           ,PEDPART.ImporteUSD [ImporteUSD]
           ,PEDPART.ValorMciaME [ValorMciaME]
           ,PEDPART.ValorMciaUSD [ValorMciaUSD]
           ,PEDPART.ValorAgregadoUSD [ValorAgregadoUSD]
           ,PEDPART.PesoBruto [PesoBruto]
           ,PEDPART.idPaisOrigen [idPaisOrigen]
           ,PEDPARTPAIS.ClaveM3 [PaisOrigenClaveM3]
           ,PEDPARTPAIS.NombrePais [PaisOrigenNombrePais]
           ,PEDPART.idFraccion [idFraccion]
           ,PEDPARTTIGIE.Fraccion [TIGIEFraccion]
           ,PEDPARTTIGIE.tg_Descripcion [TIGIEtg_Descripcion]
           ,PEDPARTTIGIE.idUnidad [TIGIEidUnidad]
           ,PEDPARTTIGIEUM.ClaveUnidad [TGIEUnidadClaveIUnidad]
           ,PEDPARTTIGIEUM.Descripcion [TGIEUnidadDescripcion]
           ,PEDPARTTIGIEUM.Abreviacion [TGIEUnidadAbreviacion]
           ,PEDPARTTIGIEUM.Abreviacion2 [TGIEUnidadAbreviacion2]
           ,PEDPARTTIGIEUM.ClaveCOVE [TGIEUnidadClaveCOVE]
           ,PEDPARTTIGIEUM.UMCOVEValidas [TGIEUnidadUMCOVEValidas]
           ,PEDPART.CantidadTarifa [CantidadTarifa]
           ,PEDPART.idIdentificador [idIdentificador]
           ,PEDPARTIDENT.Identificador [IdentificadorIdentificador]
           ,PEDPARTIDENT.it_Descripcion [IdentificadoritDescripcion]
           ,PEDPARTIDENT.Nivel [IdentificadorNivel]
           ,PEDPART.Complemento [Complemento]
           ,PEDPART.Desaduanamiento [Desaduanamiento]
           ,PEDPART.idOrdenFraccion [idOrdenFraccion]
           ,PEDPARTPEDFR.idFraccion [PedFraccionidFraccion]
           ,PEDPARTPEDFRTIGIE.Fraccion [PedFraccionTIGIEFraccion]
           ,PEDPARTPEDFRTIGIE.tg_Descripcion [PedFraccionTIGIEtg_Descripcion]
           ,PEDPARTPEDFRTIGIE.idUnidad [PedFraccionTIGIEidUnidad]
           ,PEDPARTPEDFRTIGIEUM.ClaveUnidad [PedFraccionTGIEUnidadClaveIUnidad]
           ,PEDPARTPEDFRTIGIEUM.Descripcion [PedFraccionTGIEUnidadDescripcion]
           ,PEDPARTPEDFRTIGIEUM.Abreviacion [PedFraccionTGIEUnidadAbreviacion]
           ,PEDPARTPEDFRTIGIEUM.Abreviacion2 [PedFraccionTGIEUnidadAbreviacion2]
           ,PEDPARTPEDFRTIGIEUM.ClaveCOVE [PedFraccionTGIEUnidadClaveCOVE]
           ,PEDPARTPEDFRTIGIEUM.UMCOVEValidas [PedFraccionTGIEUnidadUMCOVEValidas]
           ,PEDPARTPEDFR.Descripcion [PedFraccionDescripcion]
           ,PEDPARTPEDFR.Marca [PedFraccionMarca]
           ,PEDPARTPEDFR.Modelo [PedFraccionModelo]
           ,PEDPARTPEDFR.NoSerie [PedFraccionNoSerie]
           ,PEDPARTPEDFR.CodigoProducto [PedFraccionCodigoProducto]
           ,PEDPARTPEDFR.PesoBruto [PedFraccionPesoBruto]
           ,PEDPARTPEDFR.CantidadComercial [PedFraccionCantidadComercial]
           ,PEDPARTPEDFR.idUMC [PedFraccionidUMC]
           ,PEDPARTPEDFRUM.ClaveUnidad [PedFraccionUnidadMedidaComercialClaveIUnidad]
           ,PEDPARTPEDFRUM.Descripcion [PedFraccionUnidadMedidaComercialDescripcion]
           ,PEDPARTPEDFRUM.Abreviacion [PedFraccionUnidadMedidaComercialAbreviacion]
           ,PEDPARTPEDFRUM.Abreviacion2 [PedFraccionUnidadMedidaComercialAbreviacion2]
           ,PEDPARTPEDFRUM.ClaveCOVE [PedFraccionUnidadMedidaComercialClaveCOVE]
           ,PEDPARTPEDFRUM.UMCOVEValidas [PedFraccionUnidadMedidaComercialUMCOVEValidas]
           ,PEDPARTPEDFR.CantidadTarifa [PedFraccionCantidadTarifa]
           ,PEDPARTPEDFR.idPaisOrigen [PedFraccionidPaisOrigen]
           ,PEDPARTPEDFRPAISO.ClaveM3 [PedFraccionPaisOrigenClaveM3]
           ,PEDPARTPEDFRPAISO.NombrePais [PedFraccionPaisOrigenNombrePais]
           ,PEDPARTPEDFR.idPaisVendedor [PedFraccionidPaisVendedor]
           ,PEDPARTPEDFRPAISV.ClaveM3 [PedFraccionPaisVendedorClaveM3]
           ,PEDPARTPEDFRPAISV.NombrePais [PedFraccionPaisVendedorNombrePais]
           ,PEDPARTPEDFR.idPaisMoneda [PedFraccionidPaisMoneda]
           ,PEDPARTPEDFRPAISM.ClaveM3 [PedFraccionPaisMonedaClaveM3]
           ,PEDPARTPEDFRPAISM.NombrePais [PedFraccionPaisMonedaNombrePais]
           ,PEDPARTPEDFRPAISM.ClaveMoneda [PedFraccionPaisMonedaClaveMoneda]
           ,PEDPARTPEDFRPAISM.NombreMoneda [PedFraccionPaisMonedaNombreMoneda]
           ,PEDPARTPEDFR.ImporteME [PedFraccionImporteME]
           ,PEDPARTPEDFR.ValorAgregado [PedFraccionValorAgregado]
           ,PEDPARTPEDFR.idValoracion [PedFraccionidValoracion]
           ,PEDPARTPEDFRMV.ClaveValoracion [PedFraccionValoracionClaveValoracion]
           ,PEDPARTPEDFRMV.mv_Descripcion [PedFraccionValoracionmv_Descripcion]
           ,PEDPARTPEDFR.Observaciones [PedFraccionObservaciones]
           ,PEDPARTPEDFR.idVinculacion [PedFraccionidVinculacion]
           ,PEDPARTPEDFRTV.Clave [PedFraccionVinculacionClave]
           ,PEDPARTPEDFRTV.Descripcion [PedFraccionidVinculacionDescripcion]
           ,PEDPARTPEDFR.Subdivision [PedFraccionSubdivision]
           ,PEDPARTPEDFR.ValorMciaNoOriginaria [PedFraccionValorMciaNoOriginaria]
           ,PEDPARTPEDFR.MontoIGI [PedFraccionMontoIGI]
           ,PEDPARTPEDFR.ArancelEUACAN [PedFraccionArancelEUACAN]
           ,PEDPARTPEDFR.MontoExento [PedFraccionMontoExento]
           ,PEDPARTPEDFR.ValorFactura [PedFraccionValorFactura]
           ,PEDPARTPEDFR.ValorAduana [PedFraccionValorAduana]
           ,PEDPARTPEDFR.ValorDolares [PedFraccionValorDolares]
           ,PEDPARTPEDFR.LongDescripcion [PedFraccionLongDescripcion]
           ,PEDPARTPEDFR.ORDEN [PedFraccionORDEN]
           ,PEDPARTPEDFR.ValorAduanaCuentaAduanera [PedFraccionValorAduanaCuentaAduanera]
           ,PEDPARTPEDFR.ValorRetorno [PedFraccionValorRetorno]
           ,PEDPARTPEDFR.idPaisProcedencia [PedFraccionidPaisProcedencia]
           ,PEDPARTPEDFRPAISP.ClaveM3 [PedFraccionPaisProcedenciaClaveM3]
           ,PEDPARTPEDFRPAISP.NombrePais [PedFraccionPaisProcedenciaNombrePais]
           ,PEDPARTPEDFR.NuevasObservaciones [PedFraccionNuevasObservaciones]
           ,PEDPART.idRemesa [idRemesa]
           ,PEDPART.idReferencia [idReferencia]
           ,PEDPART.CantidadSaldo [CantidadSaldo]
           ,PEDPART.Explosionado [Explosionado]
           ,PEDPART.EstatusPPS [EstatusPPS]
           ,PEDPART.NOTA_1 [NOTA_1]
           ,PEDPART.NOTA_2 [NOTA_2]
           ,PEDPART.NOTA_3 [NOTA_3]
           ,PEDPART.NOTA_4 [NOTA_4]
           ,PEDPART.NOTA_5 [NOTA_5]
           ,PEDPART.PrecioUnitario [PrecioUnitario]
           ,PEDPART.ValorNoOriginario [ValorNoOriginario]
           ,PEDPART.ValorRetorno [ValorRetorno]
           ,PEDPART.Commodity [Commodity]
           ,PEDPART.Bultos [Bultos]
           ,PEDPART.idPartidaOriginal [idPartidaOriginal]
           ,PEDPART.OrdenCompra [OrdenCompra]
           ,PEDPART.idIdentificador2 [idIdentificador2]
           ,PEDPARTIDENT2.Identificador [Identificador2Identificador]
           ,PEDPARTIDENT2.it_Descripcion [Identificador2itDescripcion]
           ,PEDPARTIDENT2.Nivel [Identificador2Nivel]
           ,PEDPART.Complemento2_1 [Complemento2_1]
           ,PEDPART.Complemento2_2 [Complemento2_2]
           ,PEDPART.Comlpemento2_3 [Comlpemento2_3]
           ,PEDPART.idIdentificador3 [idIdentificador3]
           ,PEDPARTIDENT3.Identificador [Identificador3Identificador]
           ,PEDPARTIDENT3.it_Descripcion [Identificador3itDescripcion]
           ,PEDPARTIDENT3.Nivel [Identificador3Nivel]
           ,PEDPART.Complemento3_1 [Complemento3_1]
           ,PEDPART.Complemento3_2 [Complemento3_2]
           ,PEDPART.Complemento3_3 [Complemento3_3]
           ,PEDPART.idUnidadCOVE [idUnidadCOVE]
           ,PEDPARTUMCOVE.Clave [UnidadCOVEClave]
           ,PEDPARTUMCOVE.Descripcion [UnidadCOVEDescripcion]
           ,PEDPARTUMCOVE.Abreviacion [UnidadCOVEAbreviacion]
           ,PEDPART.CantidadCOVE [CantidadCOVE]
           ,PEDPART.DescripcionCOVE [DescripcionCOVE]
           ,PEDPART.idValoracion [idValoracion]
           ,PEDPARTMETVAL.ClaveValoracion [ValoracionClaveValoracion]
           ,PEDPARTMETVAL.mv_Descripcion [Valoracionmv_Descripcion]
           ,PEDPART.ValorCOVE [ValorCOVE]
           ,PEDPART.subModelo [subModelo]
           ,PEDPART.Lote [Lote]
           ,PEDPART.POCantidad [POCantidad]
           ,PEDPART.PartePreCaptura [PartePreCaptura]
           ,PEDPART.CertificaOrigen [CertificaOrigen]
           ,PEDPART.Complemento2 [Complemento2]
           ,PEDPART.Complemento3 [Complemento3]
           ,PEDPART.idCategoria [idCategoria]
           ,PEDPART.idTipoDeMercancia [idTipoDeMercancia]
           ,NULL [TipoDeMercancia]
           ,PEDPARTTIPMER.Clave [TipoDeMercanciaClave]
           ,PEDPARTTIPMER.Descripcion [TipoDeMercanciaDescripcion]
           ,NULL [TipoDeMercanciaClaveTipoMercancia]
           ,NULL [TipoDeMercanciaNombreTipoMercancia]
FROM Ped_Partidas                      PEDPART
	LEFT JOIN UnidadesMedida           PEDPARTUM           WITH(NOLOCK) ON (PEDPART.idUMC                  = PEDPARTUM.idUnidad)
	LEFT JOIN Paises                   PEDPARTPAIS         WITH(NOLOCK) ON (PEDPART.idPaisOrigen           = PEDPARTPAIS.idPais)
	LEFT JOIN TIGIE                    PEDPARTTIGIE        WITH(NOLOCK) ON (PEDPART.idFraccion             = PEDPARTTIGIE.idFraccion)
	LEFT JOIN UnidadesMedida           PEDPARTTIGIEUM      WITH(NOLOCK) ON (PEDPARTTIGIE.idUnidad          = PEDPARTTIGIE.idUnidad)
	LEFT JOIN Identificadores          PEDPARTIDENT        WITH(NOLOCK) ON (PEDPART.idIdentificador        = PEDPARTIDENT.idIdentificador)
	LEFt JOIN Ped_Fraccion             PEDPARTPEDFR        WITH(NOLOCK) ON (PEDPART.idFraccion             = PEDPARTPEDFR.idFraccion)
	LEFT JOIN TIGIE                    PEDPARTPEDFRTIGIE   WITH(NOLOCK) ON (PEDPARTPEDFR.idFraccion        = PEDPARTPEDFRTIGIE.idFraccion)
	LEFT JOIN UnidadesMedida           PEDPARTPEDFRTIGIEUM WITH(NOLOCK) ON (PEDPARTPEDFRTIGIE.idUnidad     = PEDPARTPEDFRTIGIEUM.idUnidad)
	LEFT JOIN UnidadesMedida           PEDPARTPEDFRUM      WITH(NOLOCK) ON (PEDPARTPEDFR.idUMC             = PEDPARTPEDFRUM.idUnidad)
	LEFT JOIN Paises                   PEDPARTPEDFRPAISO   WITH(NOLOCK) ON (PEDPARTPEDFR.idPaisOrigen      = PEDPARTPEDFRPAISO.idPais)
	LEFT JOIN Paises                   PEDPARTPEDFRPAISV   WITH(NOLOCK) ON (PEDPARTPEDFR.idPaisVendedor    = PEDPARTPEDFRPAISV.idPais)
	LEFT JOIN Paises                   PEDPARTPEDFRPAISM   WITH(NOLOCK) ON (PEDPARTPEDFR.idPaisMoneda      = PEDPARTPEDFRPAISM.idPais)
	LEFT JOIN MetodosValoracion        PEDPARTPEDFRMV      WITH(NOLOCK) ON (PEDPARTPEDFR.idValoracion      = PEDPARTPEDFRMV.IdValoracion)
	LEFT JOIN TiposVinculacion         PEDPARTPEDFRTV      WITH(NOLOCK) ON (PEDPARTPEDFR.idVinculacion     = PEDPARTPEDFRTV.idVinculacion)
	LEFT JOIN Paises                   PEDPARTPEDFRPAISP   WITH(NOLOCK) ON (PEDPARTPEDFR.idPaisProcedencia = PEDPARTPEDFRPAISP.idPais)
	LEFT JOIN Identificadores          PEDPARTIDENT2       WITH(NOLOCK) ON (PEDPART.idIdentificador2       = PEDPARTIDENT2.idIdentificador)
	LEFT JOIN Identificadores          PEDPARTIDENT3       WITH(NOLOCK) ON (PEDPART.idIdentificador3       = PEDPARTIDENT3.idIdentificador)
	LEFT JOIN UnidadesMedidaCOVE       PEDPARTUMCOVE       WITH(NOLOCK) ON (PEDPART.idUnidadCOVE           = PEDPARTUMCOVE.idUnidadCOVE)
	LEFT JOIN MetodosValoracion        PEDPARTMETVAL       WITH(NOLOCK) ON (PEDPART.idValoracion           = PEDPARTMETVAL.IdValoracion)
	LEFT JOIN TipoDeMercancia          PEDPARTTIPMER       WITH(NOLOCK) ON (PEDPART.idTipoDeMercancia      = PEDPARTTIPMER.idTipoDeMercancia)

	