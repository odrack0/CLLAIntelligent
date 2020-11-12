SELECT 
      [OrigenIdReferencia]
      ,[OrigenIdFactura]
      ,[OrigenIdGuia]
      ,[GuiaGuiaMaster]
      ,[GuiaGuiaHouse]
      ,[GuiaFecha]
      ,[GuiaBultos]
      ,[GuiaArribo]
	  ,[GuiaTransportMasterClave] AS GuiaTransportistaMasterClave
      ,[GuiaTransportMasterNombre] AS GuiaTransportistaMasterNombre
      ,[GuiaIdenTranspoMaster]  AS GuiaIdentificadorTranportistaMaster
      ,[GuiaPaisTransporMasterClaveM3] AS GuiaTransportistaMasterPaisClaveM3
      ,[GuiaPaisTransporMasterNombrePais] AS GuiaTransportistaMasterPaisNombre
	  ,[GuiaTransportHouseClave] AS GuiaTransportistaHouseClave
      ,[GuiaTransportHouserNombre] AS GuiaTransportistaHouseNombre      
      ,[GuiaIdenTranspoHouse] AS GuiaIdentificadorTransportistaHouse
      ,[GuiaPaisTransporHouseClaveM3] AS GuiaTransportistaHousePaisClaveM3
      ,[GuiaPaisTransporHouseNombrePais] AS GuiaTransportistaHousePaisNombre
      ,[GuiaGuiaObservacionClave] 
      ,[GuiaPrioridadClave]
      ,[GuiaPrioridad]
      ,[GuiaFolio]
      ,[NumeroFactura]
      ,[COVEEDocument]
      ,[COVEFecha]
      ,[FechaFactura]
      ,[FechaEntPres] AS FechaEntradaOPresentacion
      ,[Incoterm]
      ,[IncotermDescripcion]
      ,[PaisMonedaClaveM3]
      ,[PaisMonedaNombrePais]
      ,[ProveedorClaveProveedor]
      ,[ProveedorRazonSocial]
      ,[ProveedorTaxNumber]
      ,[ProveedorRFC]
      ,[ProveedorCalle]
      ,[ProveedorNumeroExterior]
      ,[ProveedorNumeroInterior]
      ,[ProveedorColonia]
      ,[ProveedorCodigoPostal]
      ,[ProveedorCiudad]
      ,[ProveedorEntidadClaveEntidad]
      ,[ProveedorEntidadEntidadFederativa]
      ,[ProveedorPaisClaveM3]
      ,[ProveedorPaisNombrePais]
      ,[Proveedoremail] AS ProveedorClaveExterna
      ,[DestinatarioClaveProveedor]
      ,[DestinatarioRazonSocial]
      ,[DestinatarioTaxNumber]
      ,[DestinatarioRFC]
      ,[DestinatarioCalle]
      ,[DestinatarioNumeroExterior]
      ,[DestinatarioNumeroInterior]
      ,[DestinatarioColonia]
      ,[DestinatarioCodigoPostal]
      ,[DestinatarioCiudad]
      ,[DestinatarioEntidadClaveEntidad]
      ,[DestinatarioEntidadEntidadFederativa]
      ,[DestinatarioPaisClaveM3]
      ,[DestinatarioPaisNombrePais]
      ,[Destinatarioemail] AS DestinatarioClaveExterna
      ,[DestinatarioNumExportadorConfiable]
      ,[DestinatarioNumOperadorEconomico]
      ,[FletesUSD]
      ,[SegurosUSD]
      ,[EmbalajeUSD]
      ,[OtrosIncrementUSD]
      ,[ValoracionClaveValoracion] AS ValoracionClave
      ,[Valoracionmv_Descripcion] AS ValoracionDescripcion
      ,[P_O] AS OrdenCompra
      ,[Notas]
      ,[ImporteUSD]
      ,[ImporteME]
      ,[ValorMciaME]
      ,[ValorMciaUSD]
      ,[ValorAgregadoUSD]
      ,[PesoBruto]
      ,[EquivalenciaFecha]
      ,[Equivalencia]
      ,[PaisProveedorPaisClaveM3]
      ,[PaisProveedorPaisNombrePais]
      ,[PaisProcedenciaPaisClaveM3]
      ,[PaisProcedenciaPaisNombrePais]
      ,[VinculacionClave]
      ,[VinculacionDescripcion]
      ,[Subdivision]
      ,[CentroCostoCentroCosto]
      ,[CentroCostoEjecutivo]
      ,[fungeCertificado]
      ,[FletesME]
      ,[SegurosME]
      ,[EmbalajeME]
      ,[OtrosIncrementME]
      ,[PaisMonFletesClaveM3] AS PaisMonedaFletesClaveM3
      ,[PaisMonFletesNombrePais] AS PaisMonedaFletesNombre
      ,[PaisMonFletesClaveMoneda] AS PaisMonedaFletesClaveMoneda
      ,[PaisMonFletesNombreMoneda] AS  PaisMonedaFletesNombreMoneda
      ,[PaisMonSegurosClaveM3] AS PaisMonedaSegurosClaveM3
      ,[PaisMonSegurosNombrePais] AS PaisMonedaSegurosNombre
      ,[PaisMonSegurosClaveMoneda] AS PaisMonedaSegurosClaveMoneda
      ,[PaisMonSegurosNombreMoneda] AS PaisMonedaSegurosNombreMoneda
      ,[PaisMonEmbalajeClaveM3] AS PaisMonedaEmbalajeClaveM3
      ,[PaisMonEmbalajeNombrePais] AS PaisMonedaEmbalajeNombre
      ,[PaisMonEmbalajeClaveMoneda] AS PaisMonedaEmbalajeClaveMoneda
      ,[PaisMonEmbalajeNombreMoneda] AS  PaisMonedaEmbalajeNombreMoneda
      ,[PaisMonOtrosIncrementClaveM3] AS PaisMonedaOtrosIncrementClaveM3
      ,[PaisMonOtrosIncrementNombrePais] AS PaisMonedaOtrosIncrementNombre
      ,[PaisMonOtrosIncrementClaveMoneda] AS PaisMonedaOtrosIncrementClaveMoneda
      ,[PaisMonOtrosIncrementNombreMoneda] AS PaisMonedaOtrosIncrementNombreMoneda
      ,[Notas2]
      ,[Enajenacion]
      ,[FacturaOriginal]
      ,[CertificaOrigen]
  FROM BitacoraCargaSysExpertPedimento                BCP 
	JOIN [dbo].[ExtraccionSysExpertPedimentoFactura]  EPF ON (BCP.idReferencia = EPF.OrigenIdReferencia)
  WHERE
    BCP.FechaCargaPedimentoFactura IS NULL

