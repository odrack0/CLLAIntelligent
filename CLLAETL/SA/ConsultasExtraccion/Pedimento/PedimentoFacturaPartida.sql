SELECT
	   EPFP.[idReferencia] AS OrigenidReferencia
      ,[idPartida] AS OrigenidPartida
      ,[idFactura] AS OrigenidFactura
      ,[Descripcion]
      ,[Marca]
      ,[Modelo]
      ,[NoSerie]
      ,[CantidadComercial]
	  ,[UnidadMedidaComercialClaveIUnidad] AS UnidadMedidaComercialClave
      ,[UnidadMedidaComercialDescripcion]
      ,[UnidadMedidaComercialAbreviacion]
      ,[ImporteME] 
      ,[ImporteUSD]
      ,[ValorMciaME] AS ValorMercanciaME
      ,[ValorMciaUSD] AS ValorMercanciaUSD
      ,[ValorAgregadoUSD] AS ValorAgregadoUSD
      ,[PesoBruto]
      ,[PaisOrigenClaveM3]
      ,[PaisOrigenNombrePais] AS PaisOrigenNombre
      ,[TIGIEFraccion] AS FraccionArancelaria
      ,[TIGIEtg_Descripcion] AS FraccionArancelariaDescripcion
      ,[TGIEUnidadClaveIUnidad] AS UnidadMedidaTarifaClave
	  ,[TGIEUnidadDescripcion] AS UnidadMedidaTarifaDescripcion
      ,[TGIEUnidadAbreviacion] AS UnidadMedidaTarifaAbreviacion
      ,[CantidadTarifa]
      ,[IdentificadorIdentificador]    AS IdentificadorI
      ,[IdentificadoritDescripcion]    AS IdentificadorIDescripcion
	  ,[Complemento]                   AS IdentificadorIComplemento1
	  ,[Complemento2]                  AS IdentificadorIComplemento2
      ,[Complemento3]                  AS IdentificadorIComplemento3
      ,[Identificador2Identificador]   AS IdentificadorII
      ,[Identificador2itDescripcion]   AS IdentificadorIIDescripcion
      ,[Complemento2_1]                AS IdentificadorIIComplemento1
      ,[Complemento2_2]                AS IdentificadorIIComplemento2
      ,[Comlpemento2_3]                AS IdentificadorIIComplemento3
	  ,[Identificador3Identificador]   AS IdentificadorIII
      ,[Identificador3itDescripcion]   AS IdentificadorIIIDescripcion
      ,[Complemento3_1]                AS IdentificadorIIIComplemento1
      ,[Complemento3_2]                AS IdentificadorIIIComplemento2
      ,[Complemento3_3]                AS IdentificadorIIIComplemento3
      ,[idOrdenFraccion] AS OrigenidOrdenFraccion
      ,[NOTA_1]
      ,[NOTA_2]
      ,[NOTA_3]
      ,[NOTA_4]
      ,[NOTA_5]
      ,[PrecioUnitario]
      ,[Commodity]
      ,[Bultos]
      ,[OrdenCompra]
      ,[UnidadCOVEClave]
      ,[UnidadCOVEDescripcion]
      ,[CantidadCOVE]
      ,[DescripcionCOVE]
      ,[ValoracionClaveValoracion] AS ValoracionClave
      ,[Valoracionmv_Descripcion]  AS ValoracionDescripcion
      ,[ValorCOVE]
      ,[PartePreCaptura]
  FROM BitacoraCargaSysExpertPedimento                      BCP
	JOIN [dbo].[ExtraccionSysExpertPedimentoFacturaPartida] EPFP ON (BCP.idReferencia = EPFP.idReferencia)