SELECT 
	[OrigenidReferencia]
	,[OrigenidAgencia]
	,[OrigenidCliente]
	,[Patente]
	,[AduanaClave]
	,[AduanaNombre]
	,[NumeroReferencia]
	,[NumeroPedimento]
	,[TipoOperacion]
	,[TipoOperacioClave]
	,[Rectificacion]
	,[ClaveDocumento]
	,[ClaveDocumentoRegimenClave]
	,[ClaveDocumentoRegimenClaveDescripcion]
	,[AduanaEntSalClaveAduana]
	,[AduanaEntSalNombreAduana]
	,[AduanaDespachoClave]
	,[AduanaDespachoNombre]
	,[TipoCambioFecha]
	,[TipoCambioValor]
	,[ClienteClaveCliente]
	,[ClienteRazonSocial]
	,[ClienteRFC]
	,[ClienteDomicilio]
	,[ClienteCalle]
	,[ClienteNumeroExterior]
	,[ClienteNumeroInterior]
	,[ClienteColonia]
	,[ClienteCodigoPostal]
	,[ClienteCiudad]
	,[ClienteClaveEntidad]
	,[ClienteEntidadFederativa]
	,[ClientePaisClaveM3]
	,[ClientePaisNombrePais]
	,[ClienteFacturarClaveCliente]
	,[ClienteFacturarRazonSocial]
	,[ClienteFacturarRFC]
	,[ClienteFacturarDomicilio]
	,[ClienteFacturarCalle]
	,[ClienteFacturarNumeroExterior]
	,[ClienteFacturarNumeroInterior]
	,[ClienteFacturarColonia]
	,[ClienteFacturarCodigoPostal]
	,[ClienteFacturarCiudad]
	,[ClienteFacturarClaveEntidad]
	,[ClienteFacturarEntidadFederativa]
	,[ClienteFacturarPaisClaveM3]
	,[ClienteFacturarPaisNombrePais]
	,[MedioTransporteEntradaClaveTransporte]
	,[MedioTransporteEntradaDescripcion]
	,[MedioTransporteSalidaClaveTransporte]
	,[MedioTransporteSalidaDescripcion]
	,[MedioTransporteArriboClaveTransporte]
	,[MedioTransporteArriboDescripcion]
	,[ValorSegurosMN]
	,[DescuentosAdmisiblesUSD]
	,[FactorActualizacion]
	,[AfectaIncrementables]
	,[Bultos]
	,[MarcasNumeros]
	,[DestinoClave]
	,[DestinoDescripcion]
	,[TramitadorClave]
	,[TramitadorNombre]
	,[TramitadorRFC]
	,[TramitadorCURP]
	,[Observaciones]
	,[Acuse]
	,[ArchivoValidacion]
	,[Bacuse] AS BancoAcuse
	,[BArchivoValidacion] AS BancoArchivoValidacion
	,[BPagoFecha] AS BancoFechaPago
	,[BpagoHora] AS BancoHoraPago
	,[Bcaja] AS BancoCaja
	,[BOperacionBancaria] AS BancoOperacionBancaria
	,[BancosClave] AS BancoClave
	,[BancosNombre] AS BancoNombre
	,[Desaduanamiento]
	,[DesaduanamientoFecha]
	,[Aleatorio]
	,[Anio]
	,[TotalVehiculos]
	,[PesoBruto]
	,[PrevalidadorClavePrevalidador]
	,[PrevalidadorNombrePrevalidador]
	,[SemanaFechaInicial]
	,[SemanaFechaFinal]
	,[Semana]
	,[ContadorRemesas] AS NumeroRemesas
	,[FletesUSD]
	,[SegurosUSD]
	,[EmbalajeUSD]
	,[OtrosIncrementablesUSD]
	,[FactorIncrementables]
	,[TipoActualizacion]
	,[Producto]
	,[Planta]
	,[ClaveCuentaPago]
	,[NuevasObservaciones]
	,[RFCFacturaServicios]
	,[TipoDeCambio]
	,[ClaveRegimen]
	,[IncrementablesManual]
	,[FletesME]
	,[SegurosME]
	,[EmbalajeME]
	,[OtrosIncrementME]
	,[PaisMonFletesClaveM3] AS PaisMonedaFletesClaveM3
	,[PaisMonFletesNombrePais] AS PaisMonedaFletesNombre
	,[PaisMonFletesClaveMoneda] AS PaisMonedaFletesMonedaClave
	,[PaisMonFletesNombreMoneda] AS PaisMonedaFletesMonedaNombre
	,[PaisMonSegurosClaveM3] AS PaisMonedaSegurosClaveM3
	,[PaisMonSegurosNombrePais] AS PaisMonedaSegurosNombrePais
	,[PaisMonSegurosClaveMoneda] AS PaisMonedaSegurosMonedaClave
	,[PaisMonSegurosNombreMoneda] AS PaisMonedaSeguroMonedaNombre
	,[PaisMonEmbalajeClaveM3] AS PaisMonedaEmbajalajeClaveM3
	,[PaisMonEmbalajeNombrePais] AS PaisMonedaEmbalajeNombre
	,[PaisMonEmbalajeClaveMoneda] AS PaisMonedaEmbalajeMonedaClave
	,[PaisMonEmbalajeNombreMoneda] AS PaisMonedaEmbalajeMonedaNombre
	,[PaisMonOtrosIncrementClaveM3] AS PaisMonedaOtrosIncrementablesClaveM3
	,[PaisMonOtrosIncrementNombrePais] AS PaisMonedaOtrosIncrementablesNombre
	,[PaisMonOtrosIncrementClaveMoneda] AS PaisMonedaOtrosIncrementablesMonedaClave
	,[PaisMonOtrosIncrementNombreMoneda] AS PaisMonedaOtrosIncrementablesMonedaNombre
	,[LineaCaptura]
	,[TotalImportePagar]
	,[ArchivoConfimacionPago]
	,[AcuseConfirmacionPago]
	,[NumeroTransaccionSAT]
  FROM BitacoraCargaSysExpertPedimento          BCP
	JOIN [dbo].[ExtraccionSysExpertPedimento]   EP ON (BCP.idReferencia = EP.OrigenidReferencia)
  WHERE
	BCP.FechaCargaPedimento IS NULL
  ORDER BY
	BCP.idReferencia