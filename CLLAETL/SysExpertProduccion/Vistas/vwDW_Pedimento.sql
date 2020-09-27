USE [SysExpertBackup]
GO

SELECT TOP 1000
	 PEDGRALES.idReferencia [idReferencia]
	,PFENTRADA.Fecha [FechaEntrada]
    ,PFPAGO.Fecha [FechaPago]
	,PFEXTRACCION.Fecha [FechaExtraccion]
	,PFPRESENTACION.Fecha [FechaPresentacion]
	,PFIMP.Fecha [FechaIMP. EUA/CAN]
	,PFORIGINAL.Fecha [FechaOriginal]
	,PEDGRALES.idAgencia [idAgencia]
	,AGENCIAS.Patente [AgenciaPatente]
	,AGENCIAS.idAduana [AgenciaAduanaidAduana]
	,ADUANAS.ClaveAduana [AgenciaAduanaClaveAduana]
	,ADUANAS.NombreAduana [AgenciaAduanaNombreAduana]
	,PEDGRALES.NumeroReferencia [NumeroReferencia]
	,PEDGRALES.NumeroPedimento [NumeroPedimento]
	,OPERACIONES.idTipoOperacion [idTipoOperacion]
	,OPERACIONES.TipoOperacion [TipoOperacionTipoOperacion]
	,OPERACIONES.op_Clave [TipoOperacionOp_Clave]
	,OPERACIONES.op_Descripcion [TipoOperacionOp_Descripcion]
	,PEDGRALES.Rectificacion [Rectificacion]
	,PEDRECTIF.idRectificacion [idRectificacion] --TABLA INTERMEDIA
	,PEDRECTIF.idCveDocRectificacion [RectificacionidCveDocRectificacion]
	,PEDRECTIFCVEDOCSRECTIF.Clave [RectificacionCveDocRectificacionClave]
	,PEDRECTIFCVEDOCSRECTIF.IdGrupo [RectificacionidCveDocRectificacionIdGrupo]
	,PEDRECTIFCVEDOCSRECTIFREG.rg_Clave [RectificacionidCveDocRectificacionRegimenrg_Clave]
	,PEDRECTIFCVEDOCSRECTIFREG.rg_Descripcion [RectificacionidCveDocRectificacionRegimenrg_Descripcion]
	,PEDRECTIF.PedimentoOriginal [RectificacionPedimentoOriginal]
	,PEDRECTIF.idCveDocOriginal [RectificacionidCveDocOriginal]
	,PEDRECTIFCVEDOCSORIG.Clave [RectificacionCveDocOriginalClave]
	,PEDRECTIFCVEDOCSORIG.IdGrupo [RectificacionCveDocOriginalIdGrupo]
	,PEDRECTIFCVEDOCSORIGREG.rg_Clave [RectificacionCveDocOriginalRegimenrg_Clave]
	,PEDRECTIFCVEDOCSORIGREG.rg_Descripcion [RectificacionCveDocOriginalRegimenrg_Descripcion]
	,PEDRECTIF.FechaRectificacion [RectificacionFechaRectificacion]
	,PEDRECTIF.idAduanaOriginal [RectificacionidAduanaOriginal]
	,PEDRECTIFADUANAORIG.ClaveAduana [RectificacionAduanaOriginalClave]
	,PEDRECTIFADUANAORIG.NombreAduana [RectificacionAduanaOriginalNombre]
	,PEDRECTIF.FactorActualizacion [RectificacionFactorActualizacion]
	,PEDRECTIF.TasaRecargos [RectificacionTasaRecargos]
	,PEDRECTIF.FactorActualizacionEnt [RectificacionFactorActualizacionEnt]
	,PEDRECTIF.idReferenciaOriginal [RectifiacionidReferenciaOriginal]
	,PEDRECTIFREFORIG.NumeroReferencia [RectificacionReferenciaOriginalNumeroReferencia]
	,PDRECTIFDTA.Importe [RectificacionDiferenciaDTAImporte]--TABLA INTERMEDIA
	,PDRECTIFDTA.idFormaPago [RectificacionDiferenciaDTAidFormaPago]
	,PDRECTIFDTAFP.ClaveFormaPago [RectificacionDiferenciaDTAClaveFormaPago]
	,PDRECTIFDTAFP.fp_Descripcion [RectificacionDiferenciaDTAFormaPagofp_Descripcion]
	,PDRECTIFCC.Importe [RectificacionDiferenciaCCImporte]--TABLA INTERMEDIA
	,PDRECTIFCC.idFormaPago [RectificacionDiferenciaCCidFormaPago]
	,PDRECTIFCCFP.ClaveFormaPago [RectificacionDiferenciaCCClaveFormaPago]
	,PDRECTIFCCFP.fp_Descripcion [RectificacionDiferenciaCCFormaPagofp_Descripcion]
	,PDRECTIFIVA.Importe [RectificacionDiferenciaIVAImporte]--TABLA INTERMEDIA
	,PDRECTIFIVA.idFormaPago [RectificacionDiferenciaIVAidFormaPago]
	,PDRECTIFIVAFP.ClaveFormaPago [RectificacionDiferenciaIVAClaveFormaPago]
	,PDRECTIFIVAFP.fp_Descripcion [RectificacionDiferenciaIVAFormaPagofp_Descripcion]
	,PDRECTIFIEPS.Importe [RectificacionDiferenciaIEPSImporte]--TABLA INTERMEDIA
	,PDRECTIFIEPS.idFormaPago [RectificacionDiferenciaIEPSidFormaPago]
	,PDRECTIFIEPSFP.ClaveFormaPago [RectificacionDiferenciaIEPSClaveFormaPago]
	,PDRECTIFIEPSFP.fp_Descripcion [RectificacionDiferenciaIEPSFormaPagofp_Descripcion]
	,PDRECTIFIGIIGE.Importe [RectificacionDiferenciaIGI/IGEImporte]--TABLA INTERMEDIA
	,PDRECTIFIGIIGE.idFormaPago [RectificacionDiferenciaIGI/IGEidFormaPago]
	,PDRECTIFIGIIGEFP.ClaveFormaPago [RectificacionDiferenciaIGI/IGEClaveFormaPago]
	,PDRECTIFIGIIGEFP.fp_Descripcion [RectificacionDiferenciaIGI/IGEFormaPagofp_Descripcion]
	,PDRECTIFREC.Importe [RectificacionDiferenciaRECImporte]--TABLA INTERMEDIA
	,PDRECTIFREC.idFormaPago [RectificacionDiferenciaRECidFormaPago]
	,PDRECTIFRECFP.ClaveFormaPago [RectificacionDiferenciaRECClaveFormaPago]
	,PDRECTIFRECFP.fp_Descripcion [RectificacionDiferenciaRECFormaPagofp_Descripcion]
	,PDRECTIFMULT.Importe [RectificacionDiferenciaMULTImporte]--TABLA INTERMEDIA
	,PDRECTIFMULT.idFormaPago [RectificacionDiferenciaMULTidFormaPago]
	,PDRECTIFMULTFP.ClaveFormaPago [RectificacionDiferenciaMULTClaveFormaPago]
	,PDRECTIFMULTFP.fp_Descripcion [RectificacionDiferenciaMULTFormaPagofp_Descripcion]
	,PDRECTIF303.Importe [RectificacionDiferencia303Importe]--TABLA INTERMEDIA
	,PDRECTIF303.idFormaPago [RectificacionDiferencia303idFormaPago]
	,PDRECTIF303FP.ClaveFormaPago [RectificacionDiferencia303ClaveFormaPago]
	,PDRECTIF303FP.fp_Descripcion [RectificacionDiferencia303FormaPagofp_Descripcion]
	,PDRECTIFRT.Importe [RectificacionDiferenciaRTImporte]--TABLA INTERMEDIA
	,PDRECTIFRT.idFormaPago [RectificacionDiferenciaRTidFormaPago]
	,PDRECTIFRTFP.ClaveFormaPago [RectificacionDiferenciaRTClaveFormaPago]
	,PDRECTIFRTFP.fp_Descripcion [RectificacionDiferenciaRTFormaPagofp_Descripcion]
	,PDRECTIFPRV.Importe [RectificacionDiferenciaPRVImporte]--TABLA INTERMEDIA
	,PDRECTIFPRV.idFormaPago [RectificacionDiferenciaPRVidFormaPago]
	,PDRECTIFPRVFP.ClaveFormaPago [RectificacionDiferenciaPRVClaveFormaPago]
	,PDRECTIFPRVFP.fp_Descripcion [RectificacionDiferenciaPRVFormaPagofp_Descripcion]
	,PDRECTIFEUR.Importe [RectificacionDiferenciaEURImporte]--TABLA INTERMEDIA
	,PDRECTIFEUR.idFormaPago [RectificacionDiferenciaEURidFormaPago]
	,PDRECTIFEURFP.ClaveFormaPago [RectificacionDiferenciaEURClaveFormaPago]
	,PDRECTIFEURFP.fp_Descripcion [RectificacionDiferenciaEURFormaPagofp_Descripcion]
	,PDRECTIFECI.Importe [RectificacionDiferenciaECIImporte]--TABLA INTERMEDIA
	,PDRECTIFECI.idFormaPago [RectificacionDiferenciaECIidFormaPago]
	,PDRECTIFECIFP.ClaveFormaPago [RectificacionDiferenciaECIClaveFormaPago]
	,PDRECTIFECIFP.fp_Descripcion [RectificacionDiferenciaECIFormaPagofp_Descripcion]
	,PDRECTIFCNT.Importe [RectificacionDiferenciaCNTImporte]--TABLA INTERMEDIA
	,PDRECTIFCNT.idFormaPago [RectificacionDiferenciaCNTidFormaPago]
	,PDRECTIFCNTFP.ClaveFormaPago [RectificacionDiferenciaCNTClaveFormaPago]
	,PDRECTIFCNTFP.fp_Descripcion [RectificacionDiferenciaCNTFormaPagofp_Descripcion]
	,PDRECTIFIVAPRV.Importe [RectificacionDiferenciaIVA/PRVImporte]--TABLA INTERMEDIA
	,PDRECTIFIVAPRV.idFormaPago [RectificacionDiferenciaIVA/PRVidFormaPago]
	,PDRECTIFIVAPRVFP.ClaveFormaPago [RectificacionDiferenciaIVA/PRVClaveFormaPago]
	,PDRECTIFIVAPRVFP.fp_Descripcion [RectificacionDiferenciaIVA/PRVFormaPagofp_Descripcion]
	,PEDGRALES.idClave [idClave]
	,CVESDOCS.Clave [CveDocClave]
	,CVESDOCS.IdGrupo [CveDocIdGrupo]
	,REGIMENES.rg_Clave [CveDocRegimenrg_Clave]
	,REGIMENES.rg_Descripcion [CveDocRegimenrg_Descripcion]
	,PEDGRALES.idAduanaEntSal [idAduanaEntSal]					-- Revisar
	,ADUANASENTSAL.ClaveAduana [AduanaEntSalClaveAduana]
	,ADUANASENTSAL.NombreAduana [AduanaEntSalNombreAduana]
	,PEDGRALES.idAduanaDespacho [idAduanaDespacho]				-- Revisar
	,ADUANASDESPACHO.ClaveAduana [AduanaDespachoClave]
	,ADUANASDESPACHO.NombreAduana [AduanaDespachoNombre]
	,PEDGRALES.idTipoCambio [idTipoCambio]
	,TIPOCAMBIO.Fecha [TipoCambioFecha]
	,TIPOCAMBIO.Valor [TipoCambioValor]
	,PEDGRALES.idCliente [idCliente]
	,CLIENTES.ClaveCliente [ClienteClaveCliente]
	,CLIENTES.RazonSocial [ClienteRazonSocial]
	,CLIENTES.RFC [ClienteRFC]
	,CLIENTES.CURP [ClienteCURP]
	,CLIENTES.Domicilio [ClienteDomicilio]
	,CLIENTES.Calle [ClienteCalle]
	,CLIENTES.NumeroExterior [ClienteNumeroExterior]
	,CLIENTES.NumeroInterior [ClienteNumeroInterior]
	,CLIENTES.Colonia [ClienteColonia]
	,CLIENTES.CodigoPostal [ClienteCodigoPostal]
	,CLIENTES.Ciudad [ClienteCiudad]
	,CLIENTES.idEntidad [ClienteidEntidad]
	,CLIENTESEF.ClaveEntidad [ClienteClaveEntidad]
	,CLIENTESEF.EntidadFederativa [ClienteEntidadFederativa]
	,CLIENTES.idPais [ClienteidPais]
	,CLIENTESPAISES.ClaveM3 [ClientePaisClaveM3]
	,CLIENTESPAISES.NombrePais [ClientePaisNombrePais]
	,PEDGRALES.idClienteFacturar [idClienteFacturar]
	,CLIENTESFACTURAR.ClaveCliente [ClienteFacturarClaveCliente]
	,CLIENTESFACTURAR.RazonSocial [ClienteFacturarRazonSocial]
	,CLIENTESFACTURAR.RFC [ClienteFacturarRFC]
	,CLIENTESFACTURAR.CURP [ClienteFacturarCURP]
	,CLIENTESFACTURAR.Domicilio [ClienteFacturarDomicilio]
	,CLIENTESFACTURAR.Calle [ClienteFacturarCalle]
	,CLIENTESFACTURAR.NumeroExterior [ClienteFacturarNumeroExterior]
	,CLIENTESFACTURAR.NumeroInterior [ClienteFacturarNumeroInterior]
	,CLIENTESFACTURAR.Colonia [ClienteFacturarColonia]
	,CLIENTESFACTURAR.CodigoPostal [ClienteFacturarCodigoPostal]
	,CLIENTESFACTURAR.Ciudad [ClienteFacturarCiudad]
	,CLIENTESFACTURAR.idEntidad [ClienteFacturaridEntidad]
	,CLIFACTEF.ClaveEntidad [ClienteFacturarClaveEntidad]
	,CLIFACTEF.EntidadFederativa [ClienteFacturarEntidadFederativa]
	,CLIENTESFACTURAR.idPais [ClienteFacturaridPais]
	,CLIFACTPAIS.ClaveM3 [ClienteFacturarPaisClaveM3]
	,CLIFACTPAIS.NombrePais [ClienteFacturarPaisNombrePais]
	,PEDGRALES.idMTEntrada [idMTEntrada]					-- Revisar
	,MTENTRADA.ClaveTransporte [MTEntradaClaveTransporte]
	,MTENTRADA.Descripcion [MTEntradaDescripcion]
	,PEDGRALES.idMTSalida [idMTSalida]
	,MTSALIDA.ClaveTransporte [MTSalidaClaveTransporte]
	,MTSALIDA.Descripcion [MTSalidaDescripcion]
	,PEDGRALES.idMTArribo [idMTArribo]
	,MTARRIBO.ClaveTransporte [MTArriboClaveTransporte]
	,MTARRIBO.Descripcion [MTArriboDescripcion]
	,PEDGRALES.ValorSegurosMN [ValorSegurosMN]
	,PEDGRALES.DescuentosAdmisiblesUSD [DescuentosAdmisiblesUSD]
	,PEDGRALES.FactorActualizacion [FactorActualizacion]
	,PEDGRALES.AfectaIncrementables [AfectaIncrementables]
	,PEDGRALES.Bultos [Bultos]
	,PEDGRALES.MarcasNumeros [MarcasNumeros]
	,PEDGRALES.idDestino [idDestino]
	,DESTINOS.Clave [DestinoClave]
	,DESTINOS.Descripcion [DestinoDescripcion]
	,PEDGRALES.idTramitador [idTramitador]
	,TRAMITADORES.Clave [TramitadorClave]
	,TRAMITADORES.Nombre [TramitadorNombre]
	,TRAMITADORES.RFC [TramitadorRFC]
	,TRAMITADORES.CURP [TramitadorCURP]
	,PEDGRALES.Observaciones [Observaciones]
	,PEDGRALES.Acuse [Acuse]
	,PEDGRALES.ArchivoValidacion [ArchivoValidacion]
	,PEDGRALES.Bacuse [Bacuse]
	,PEDGRALES.BArchivoValidacion [BArchivoValidacion]
	,PEDGRALES.BPagoFecha [BPagoFecha]
	,PEDGRALES.BpagoHora [BpagoHora]
	,PEDGRALES.Bcaja [Bcaja]
	,PEDGRALES.BOperacionBancaria [BOperacionBancaria]
	,PEDGRALES.idBancos [idBancos]
	,BANCOS.Clave [BancosClave]
	,BANCOS.Nombre [BancosNombre]
	,PEDGRALES.Desaduanamiento [Desaduanamiento]
	,PEDGRALES.DesaduanamientoFecha [DesaduanamientoFecha]
	,PEDGRALES.idUsuarioDesaduana [idUsuarioDesaduana]
	,USERS.USU_NAME [UsuarioDesaduanaUSU_NAME]
	,PEDGRALES.Aleatorio [Aleatorio]
	,PEDGRALES.ClaveVista [ClaveVista]
	,PEDGRALES.idPrueba [idPrueba]								-- Nulls
	,PRUSUF.Clave [PruebaClave]
	,PRUSUF.Descripcion [PruebaDescripcion]
	,PEDGRALES.FechaPrueba [FechaPrueba]						-- Nulls
	,PEDGRALES.Anio [Anio]
	,PEDGRALES.PedimentoUSACAN [PedimentoUSACAN]
	,PEDGRALES.MV_Comisiones [MV_Comisiones]
	,PEDGRALES.MV_FletesySeguros [MV_FletesySeguros]
	,PEDGRALES.MV_CargayDescarga [MV_CargayDescarga]
	,PEDGRALES.MV_MaterialesAportados [MV_MaterialesAportados]
	,PEDGRALES.MV_TecnologiaAportada [MV_TecnologiaAportada]
	,PEDGRALES.MV_Regalias [MV_Regalias]
	,PEDGRALES.MV_Reversiones [MV_Reversiones]
	,PEDGRALES.MV_GastosNoRelacionados [MV_GastosNoRelacionados]
	,PEDGRALES.MV_FletesySegurosNI [MV_FletesySegurosNI]
	,PEDGRALES.MV_GastosConstruccion [MV_GastosConstruccion]
	,PEDGRALES.MV_InstalacionArmado [MV_InstalacionArmado]
	,PEDGRALES.MV_Contribuciones [MV_Contribuciones]
	,PEDGRALES.MV_Dividendos [MV_Dividendos]
	,PEDGRALES.TotalVehiculos [TotalVehiculos]
	,PEDGRALES.PesoBruto [PesoBruto]
	,PEDGRALES.idPrevalidador [idPrevalidador]
	,PREVALIDADOR.ClavePrevalidador [PrevalidadorClavePrevalidador]
	,PREVALIDADOR.NombrePrevalidador [PrevalidadorNombrePrevalidador]
	,PEDGRALES.FirmaCAAAREM [FirmaCAAAREM]
	,PEDGRALES.idSemana [idSemana]
	,SEMANAS.FechaInicial [SemanaFechaInicial]
	,SEMANAS.FechaFinal [SemanaFechaFinal]
	,SEMANAS.Semana [Semana]
	,PEDGRALES.ContadorRemesas [ContadorRemesas]
	,PEDGRALES.FletesUSD [FletesUSD]
	,PEDGRALES.SegurosUSD [SegurosUSD]
	,PEDGRALES.EmbalajeUSD [EmbalajeUSD]
	,PEDGRALES.OtrosIncrementablesUSD [OtrosIncrementablesUSD]
	,PEDGRALES.FactorIncrementables [FactorIncrementables]
	,PEDGRALES.TipoActualizacion [TipoActualizacion]
	,PEDGRALES.FechaExportacion [FechaExportacion]
	,PEDGRALES.ITN [ITN]
	,PEDGRALES.ITN_Valida [ITN_Valida]
	,PEDGRALES.Producto [Producto]
	,PEDGRALES.Planta [Planta]
	,PEDGRALES.Rubro [Rubro]
	,PEDGRALES.ClaveCuentaPago [ClaveCuentaPago]
	,PEDGRALES.idCuentaConsolidada [idCuentaConsolidada]
	,CUECONS.ConsecutivoCuenta [CuentaConsolidadaConsecutivoCuenta]
	,CUECONS.FechaCuenta [CuentaConsolidadaFechaCuenta]
	,PEDGRALES.Observaciones [NuevasObservaciones]
	,PEDGRALES.RFCFacturaServicios [RFCFacturaServicios]
	,PEDGRALES.TipoDeCambio [TipoDeCambio]
	,PEDGRALES.ClaveRegimen [ClaveRegimen]
	,PEDGRALES.EstatusGF [EstatusGF]
	,PEDGRALES.IncrementablesManual [IncrementablesManual]
	,PEDGRALES.Folio [Folio]
	,PEDGRALES.AgrupacionManual [AgrupacionManual]
	,PEDGRALES.OctavoResolutivo [OctavoResolutivo]
	,PEDGRALES.Glosa [Glosa]
	,PEDGRALES.FletesME [FletesME]
	,PEDGRALES.SegurosME [SegurosME]
	,PEDGRALES.EmbalajeME [EmbalajeME]
	,PEDGRALES.OtrosIncrementME [OtrosIncrementME]
	,PEDGRALES.idPaisMonFletes [idPaisMonFletes]
	,PAISMONFLETES.ClaveM3 [PaisMonFletesClaveM3]
	,PAISMONFLETES.NombrePais [PaisMonFletesNombrePais]
	,PAISMONFLETES.ClaveMoneda [PaisMonFletesClaveMoneda]
	,PAISMONFLETES.NombreMoneda [PaisMonFletesNombreMoneda]
	,PEDGRALES.idPaisMonSeguros [idPaisMonSeguros]
	,PAISMONSEGUROS.ClaveM3 [PaisMonSegurosClaveM3]
	,PAISMONSEGUROS.NombrePais [PaisMonSegurosNombrePais]
	,PAISMONSEGUROS.ClaveMoneda [PaisMonSegurosClaveMoneda]
	,PAISMONSEGUROS.NombreMoneda [PaisMonSegurosNombreMoneda]
	,PEDGRALES.idPaisMonEmbalaje [idPaisMonEmbalaje]
	,PAISMONEMBALAJE.ClaveM3 [PaisMonEmbalajeClaveM3]
	,PAISMONEMBALAJE.NombrePais [PaisMonEmbalajeNombrePais]
	,PAISMONEMBALAJE.ClaveMoneda [PaisMonEmbalajeClaveMoneda]
	,PAISMONEMBALAJE.NombreMoneda [PaisMonEmbalajeNombreMoneda]
	,PEDGRALES.idPaisMonOtrosIncrement [idPaisMonOtrosIncrement]
	,PAISMONOTROSINC.ClaveM3 [PaisMonOtrosIncrementClaveM3]
	,PAISMONOTROSINC.NombrePais [PaisMonOtrosIncrementNombrePais]
	,PAISMONOTROSINC.ClaveMoneda [PaisMonOtrosIncrementClaveMoneda]
	,PAISMONOTROSINC.NombreMoneda [PaisMonOtrosIncrementNombreMoneda]
	,PEDGRALES.LineaCaptura [LineaCaptura]
	,PEDGRALES.TotalImportePagar [TotalImportePagar]
	,PEDGRALES.ArchivoConfimacionPago [ArchivoConfimacionPago]
	,PEDGRALES.AcuseConfirmacionPago [AcuseConfirmacionPago]
	,PEDGRALES.NumeroTransaccionSAT [NumeroTransaccionSAT]
	,PEDGRALES.idClientesDomicilios [idClientesDomicilios]
	,CLIDOM.Domicilio [ClienteDomicilioDomicilio]					-- Revisar
	,CLIDOM.Calle [ClienteDomicilioCalle]
	,CLIDOM.NumeroExterior [ClienteDomicilioNumeroExterior]
	,CLIDOM.NumeroInterior [ClienteDomicilioNumeroInterior]
	,CLIDOM.Colonia [ClienteDomicilioColonia]
	,CLIDOM.CodigoPostal [ClienteDomicilioCodigoPostal]
	,CLIDOM.Ciudad [ClienteDomicilioCiudad]
	,CLIDOM.idEntidad [ClienteDomicilioidEntidad]
	,CLIDOMEF.ClaveEntidad [ClienteDomicilioClaveEntidad]
	,CLIDOMEF.EntidadFederativa [ClienteDomicilioEntidadFederativa]
	,CLIDOM.idPais [ClienteDomicilioidPais]
	,CLIDOMPAIS.ClaveM3 [ClienteDomicilioPaisClaveM3]
	,CLIDOMPAIS.NombrePais [ClienteDomicilioPaisNombrePais]
	,CLIDOM.Municipio [ClienteDomicilioMunicipio]
	,CLIDOM.idMunicipio [ClienteDomicilioidMunicipio]
	,CLIDOMMUN.ClaveMunicipio [ClienteDomicilioMunicipioClaveMunipio]
	,CLIDOMMUN.Municipio [ClienteDomicilioMunicipioMunipio]
	,CLIDOM.idColonia [ClienteDomicilioidColonia]
	,CLIDOMCOL.ClaveColonia [ClienteDomicilioColoniaClaveColonia]
	,CLIDOMCOL.Nombre [ClienteDomicilioColoniaNombre]
	,PEDGRALES.ReferenciaMaster [ReferenciaMaster]
	,PEDGRALES.idReferenciaMaster [idReferenciaMaster]
	,REFMASTER.NumeroReferencia [ReferenciaMasterNumeroReferencia]
	,PCPDTA.PorcentajeAplicar [DTAPorcentajeAplicar]
	,NULL [DTATipoTasa]--QUITAR
	,PCPDTA.idFormaPago [DTAidFormaPago]
	,PCPDTAFP.ClaveFormaPago [DTAFormaPagoClaveFormaPago]
	,PCPDTAFP.fp_Descripcion [DTAFormaPagofp_Descripcion]
	,PCPDTA.idTipoTasa [DTAidTipoTasa]
	,PCPDTAT.TipoTasa [DTATipoTastaTipoTasa]
	,PCPDTAT.Descripcion [DTATipoTasaDescripcion]
	,PCPDTA.TasaContribucion [DTATasaContribucion]
	,PCPREC.PorcentajeAplicar [RECPorcentajeAplicar]
	,NULL [RECTipoTasa]--QUITAR
	,PCPREC.idFormaPago [RECidFormaPago]
	,PCPRECFP.ClaveFormaPago [RECFormaPagoClaveFormaPago]
	,PCPRECFP.fp_Descripcion [RECFormaPagofp_Descripcion]
	,PCPREC.idTipoTasa [RECidTipoTasa]
	,PCPRECT.TipoTasa [RECTipoTastaTipoTasa]
	,PCPRECT.Descripcion [RECTipoTasaDescripcion]
	,PCPREC.TasaContribucion [RECTasaContribucion]
	,PCPOTROS.PorcentajeAplicar [OTROSPorcentajeAplicar]
	,NULL [OTROSTipoTasa]--QUITAR
	,PCPOTROS.idFormaPago [OTROSidFormaPago]
	,PCPOTROSFP.ClaveFormaPago [OTROSFormaPagoClaveFormaPago]
	,PCPOTROSFP.fp_Descripcion [OTROSFormaPagofp_Descripcion]
	,PCPOTROS.idTipoTasa [OTROSidTipoTasa]
	,PCPOTROST.TipoTasa [OTROSTipoTastaTipoTasa]
	,PCPOTROST.Descripcion [OTROSTipoTasaDescripcion]
	,PCPOTROS.TasaContribucion [OTROSTasaContribucion]
	,PCPDTI.PorcentajeAplicar [DTIPorcentajeAplicar]
	,NULL [DTITipoTasa]--QUITAR
	,PCPDTI.idFormaPago [DTIidFormaPago]
	,PCPDTIFP.ClaveFormaPago [DTIFormaPagoClaveFormaPago]
	,PCPDTIFP.fp_Descripcion [DTIFormaPagofp_Descripcion]
	,PCPDTI.idTipoTasa [DTIidTipoTasa]
	,PCPDTIT.TipoTasa [DTITipoTastaTipoTasa]
	,PCPDTIT.Descripcion [DTITipoTasaDescripcion]
	,PCPDTI.TasaContribucion [DTITasaContribucion]
	,PCPMULT.PorcentajeAplicar [MULTPorcentajeAplicar]
	,NULL [MULTTipoTasa]--QUITAR
	,PCPMULT.idFormaPago [MULTidFormaPago]
	,PCPMULTFP.ClaveFormaPago [MULTFormaPagoClaveFormaPago]
	,PCPMULTFP.fp_Descripcion [MULTFormaPagofp_Descripcion]
	,PCPMULT.idTipoTasa [MULTiMULTpoTasa]
	,PCPMULTT.TipoTasa [MULTTipoTastaTipoTasa]
	,PCPMULTT.Descripcion [MULTTipoTasaDescripcion]
	,PCPMULT.TasaContribucion [MULTTasaContribucion]
	,PCPRT.PorcentajeAplicar [RTPorcentajeAplicar]
	,NULL [RTTipoTasa]--QUITAR
	,PCPRT.idFormaPago [RTidFormaPago]
	,PCPRTFP.ClaveFormaPago [RTFormaPagoClaveFormaPago]
	,PCPRTFP.fp_Descripcion [RTFormaPagofp_Descripcion]
	,PCPRT.idTipoTasa [RTiRTpoTasa]
	,PCPRTT.TipoTasa [RTTipoTastaTipoTasa]
	,PCPRTT.Descripcion [RTTipoTasaDescripcion]
	,PCPRT.TasaContribucion [RTTasaContribucion]
	,PCPPRV.PorcentajeAplicar [PRVPorcentajeAplicar]
	,NULL [PRVTipoTasa]--QUITAR
	,PCPPRV.idFormaPago [PRVidFormaPago]
	,PCPPRVFP.ClaveFormaPago [PRVFormaPagoClaveFormaPago]
	,PCPPRVFP.fp_Descripcion [PRVFormaPagofp_Descripcion]
	,PCPPRV.idTipoTasa [PRViPRVpoTasa]
	,PCPPRVT.TipoTasa [PRVTipoTastaTipoTasa]
	,PCPPRVT.Descripcion [PRVTipoTasaDescripcion]
	,PCPPRV.TasaContribucion [PRVTasaContribucion]
	,PCPREU.PorcentajeAplicar [REUPorcentajeAplicar]
	,NULL [REUTipoTasa]--QUITAR
	,PCPREU.idFormaPago [REUidFormaPago]
	,PCPREUFP.ClaveFormaPago [REUFormaPagoClaveFormaPago]
	,PCPREUFP.fp_Descripcion [REUFormaPagofp_Descripcion]
	,PCPREU.idTipoTasa [REUiREUpoTasa]
	,PCPREUT.TipoTasa [REUTipoTastaTipoTasa]
	,PCPREUT.Descripcion [REUTipoTasaDescripcion]
	,PCPREU.TasaContribucion [REUTasaContribucion]
	,PCPECI.PorcentajeAplicar [ECIPorcentajeAplicar]
	,NULL [ECITipoTasa]--QUITAR
	,PCPECI.idFormaPago [ECIidFormaPago]
	,PCPECIFP.ClaveFormaPago [ECIFormaPagoClaveFormaPago]
	,PCPECIFP.fp_Descripcion [ECIFormaPagofp_Descripcion]
	,PCPECI.idTipoTasa [ECIiECIpoTasa]
	,PCPECIT.TipoTasa [ECITipoTastaTipoTasa]
	,PCPECIT.Descripcion [ECITipoTasaDescripcion]
	,PCPECI.TasaContribucion [ECITasaContribucion]
	,PCPDFC.PorcentajeAplicar [DFCPorcentajeAplicar]
	,NULL [DFCTipoTasa]--QUITAR
	,PCPDFC.idFormaPago [DFCidFormaPago]
	,PCPDFCFP.ClaveFormaPago [DFCFormaPagoClaveFormaPago]
	,PCPDFCFP.fp_Descripcion [DFCFormaPagofp_Descripcion]
	,PCPDFC.idTipoTasa [DFCiDFCpoTasa]
	,PCPDFCT.TipoTasa [DFCTipoTastaTipoTasa]
	,PCPDFCT.Descripcion [DFCTipoTasaDescripcion]
	,PCPDFC.TasaContribucion [DFCTasaContribucion]
	,PCPITV.PorcentajeAplicar [ITVPorcentajeAplicar]
	,NULL [ITVTipoTasa]--QUITAR
	,PCPITV.idFormaPago [ITVidFormaPago]
	,PCPITVFP.ClaveFormaPago [ITVFormaPagoClaveFormaPago]
	,PCPITVFP.fp_Descripcion [ITVFormaPagofp_Descripcion]
	,PCPITV.idTipoTasa [ITViITVpoTasa]
	,PCPITVT.TipoTasa [ITVTipoTastaTipoTasa]
	,PCPITVT.Descripcion [ITVTipoTasaDescripcion]
	,PCPITV.TasaContribucion [ITVTasaContribucion]
	,PCPCNT.PorcentajeAplicar [CNTPorcentajeAplicar]
	,NULL [CNTTipoTasa]--QUITAR
	,PCPCNT.idFormaPago [CNTidFormaPago]
	,PCPCNTFP.ClaveFormaPago [CNTFormaPagoClaveFormaPago]
	,PCPCNTFP.fp_Descripcion [CNTFormaPagofp_Descripcion]
	,PCPCNT.idTipoTasa [CNTiCNTpoTasa]
	,PCPCNTT.TipoTasa [CNTTipoTastaTipoTasa]
	,PCPCNTT.Descripcion [CNTTipoTasaDescripcion]
	,PCPCNT.TasaContribucion [CNTTasaContribucion]
	,PCPIVAPRV.PorcentajeAplicar [IVA/PRVPorcentajeAplicar]
	,NULL [IVA/PRVTipoTasa]--QUITAR
	,PCPIVAPRV.idFormaPago [IVA/PRVidFormaPago]
	,PCPIVAPRVFP.ClaveFormaPago [IVA/PRVFormaPagoClaveFormaPago]
	,PCPIVAPRVFP.fp_Descripcion [IVA/PRVFormaPagofp_Descripcion]
	,PCPIVAPRV.idTipoTasa [IVA/PRViIVA/PRVpoTasa]
	,PCPIVAPRVT.TipoTasa [IVA/PRVTipoTastaTipoTasa]
	,PCPIVAPRVT.Descripcion [IVA/PRVTipoTasaDescripcion]
	,PCPIVAPRV.TasaContribucion [IVA/PRVTasaContribucion]
FROM Ped_Grales                    PEDGRALES
	LEFT JOIN Ped_Fechas           PFENTRADA        WITH(NOLOCK) ON (PEDGRALES.idReferencia            = PFENTRADA.idReferencia      AND PFENTRADA.idFecha      = 1)
	LEFT JOIN Ped_Fechas           PFPAGO           WITH(NOLOCK) ON (PEDGRALES.idReferencia            = PFPAGO.idReferencia         AND PFPAGO.idFecha         = 2)
	LEFT JOIN Ped_Fechas           PFEXTRACCION     WITH(NOLOCK) ON (PEDGRALES.idReferencia            = PFEXTRACCION.idReferencia   AND PFEXTRACCION.idFecha   = 3)
	LEFT JOIN Ped_Fechas           PFPRESENTACION   WITH(NOLOCK) ON (PEDGRALES.idReferencia            = PFPRESENTACION.idReferencia AND PFPRESENTACION.idFecha = 4)
	LEFT JOIN Ped_Fechas           PFIMP            WITH(NOLOCK) ON (PEDGRALES.idReferencia            = PFIMP.idReferencia          AND PFIMP.idFecha          = 5)
	LEFT JOIN Ped_Fechas           PFORIGINAL       WITH(NOLOCK) ON (PEDGRALES.idReferencia            = PFORIGINAL.idReferencia     AND PFORIGINAL.idFecha     = 6)
	LEFT JOIN Agencias             AGENCIAS         WITH(NOLOCK) ON (PEDGRALES.idAgencia               = AGENCIAS.IdAgencia)
	LEFT JOIN Aduanas              ADUANAS          WITH(NOLOCK) ON (AGENCIAS.idAduana                 = ADUANAS.idAduana)
	LEFT JOIN Operaciones          OPERACIONES      WITH(NOLOCK) ON (PEDGRALES.idTipoOperacion         = OPERACIONES.idTipoOperacion)
	LEFT JOIN CvesDocs             CVESDOCS         WITH(NOLOCK) ON (PEDGRALES.idClave                 = CVESDOCS.idClave)
	LEFT JOIN Aduanas              ADUANASENTSAL    WITH(NOLOCK) ON (PEDGRALES.idAduanaEntSal          = ADUANASENTSAL.idAduana)
	LEFT JOIN Aduanas              ADUANASDESPACHO  WITH(NOLOCK) ON (PEDGRALES.idAduanaDespacho        = ADUANASDESPACHO.idAduana)
	LEFT JOIN Regimenes            REGIMENES        WITH(NOLOCK) ON (CVESDOCS.IdGrupo                  = REGIMENES.idGrupo)
	LEFT JOIN TipoCambio           TIPOCAMBIO       WITH(NOLOCK) ON (PEDGRALES.idTipoCambio            = TIPOCAMBIO.idTipoCambio)
	LEFT JOIN Clientes             CLIENTES         WITH(NOLOCK) ON (PEDGRALES.idCliente               = CLIENTES.idCliente)
	LEFT JOIN EntidadesFederativas CLIENTESEF       WITH(NOLOCK) ON (CLIENTES.idEntidad                = CLIENTESEF.idEntidad)
	LEFT JOIN Paises               CLIENTESPAISES   WITH(NOLOCK) ON (CLIENTES.idPais                   = CLIENTESPAISES.idPais)
	LEFT JOIN Clientes             CLIENTESFACTURAR WITH(NOLOCK) ON (PEDGRALES.idClienteFacturar       = CLIENTESFACTURAR.idCliente)			-- Revisar
	LEFT JOIN EntidadesFederativas CLIFACTEF        WITH(NOLOCK) ON (CLIENTESFACTURAR.idEntidad        = CLIFACTEF.idEntidad)
	LEFT JOIN Paises               CLIFACTPAIS      WITH(NOLOCK) ON (CLIENTESFACTURAR.idPais           = CLIFACTPAIS.idPais)
	LEFT JOIN MediosTransporte     MTENTRADA        WITH(NOLOCK) ON (PEDGRALES.idMTEntrada             = MTENTRADA.idTransporte)				-- Revisar
	LEFT JOIN MediosTransporte     MTSALIDA         WITH(NOLOCK) ON (PEDGRALES.idMTSalida              = MTSALIDA.idTransporte)					-- Revisar
	LEFT JOIN MediosTransporte     MTARRIBO         WITH(NOLOCK) ON (PEDGRALES.idMTArribo              = MTARRIBO.idTransporte)					-- Revisar
	LEFT JOIN Destinos             DESTINOS         WITH(NOLOCK) ON (PEDGRALES.idDestino               = DESTINOS.idDestino)
	LEFT JOIN Tramitadores         TRAMITADORES     WITH(NOLOCK) ON (PEDGRALES.idTramitador            = TRAMITADORES.idTramitador)
	LEFT JOIN Bancos               BANCOS           WITH(NOLOCK) ON (PEDGRALES.idBancos                = BANCOS.idBanco)						-- Revisar
	LEFT JOIN USUARIOS             USERS            WITH(NOLOCK) ON (PEDGRALES.idUsuarioDesaduana      = USERS.PK_USUARIO)
	LEFT JOIN PruebasSuficientes   PRUSUF           WITH(NOLOCK) ON (PEDGRALES.idPrueba                = PRUSUF.idPrueba)
	LEFT JOIN Prevalidadores       PREVALIDADOR     WITH(NOLOCK) ON (PEDGRALES.idPrevalidador          = PREVALIDADOR.idPrevalidador)
	LEFT JOIN Semanas              SEMANAS          WITH(NOLOCK) ON (PEDGRALES.idSemana                = SEMANAS.idSemana)
	LEFT JOIN CuentasConsolidadas  CUECONS          WITH(NOLOCK) ON (PEDGRALES.idCuentaConsolidada     = CUECONS.idCuentaConsolidada)
	LEFT JOIN Paises               PAISMONFLETES    WITH(NOLOCK) ON (PEDGRALES.idPaisMonFletes         = PAISMONFLETES.idPais)					-- Revisar
	LEFT JOIN Paises               PAISMONSEGUROS   WITH(NOLOCK) ON (PEDGRALES.idPaisMonSeguros        = PAISMONSEGUROS.idPais)					-- Revisar
	LEFT JOIN Paises               PAISMONEMBALAJE  WITH(NOLOCK) ON (PEDGRALES.idPaisMonEmbalaje       = PAISMONEMBALAJE.idPais)				-- Revisar
	LEFT JOIN Paises               PAISMONOTROSINC  WITH(NOLOCK) ON (PEDGRALES.idPaisMonOtrosIncrement = PAISMONOTROSINC.idPais)				-- Revisar
	LEFT JOIN Clientes_Domicilios  CLIDOM           WITH(NOLOCK) ON (PEDGRALES.idClientesDomicilios    = CLIDOM.idClientesDomicilios)
	LEFT JOIN EntidadesFederativas CLIDOMEF         WITH(NOLOCK) ON (CLIDOM.idEntidad                  = CLIDOMEF.idEntidad)					-- Revisar
	LEFT JOIN Paises               CLIDOMPAIS       WITH(NOLOCK) ON (CLIDOM.idPais                     = CLIDOMPAIS.idPais)						-- Revisar
	LEFT JOIN Municipios           CLIDOMMUN        WITH(NOLOCK) ON (CLIDOM.idMunicipio                = CLIDOMMUN.idMunicipio)					-- Revisar
	LEFT JOIN Colonia              CLIDOMCOL        WITH(NOLOCK) ON (CLIDOM.idColonia                  = CLIDOMCOL.idColonia)					-- Revisar
	LEFT JOIN Ped_Grales           REFMASTER        WITH(NOLOCK) ON (PEDGRALES.idReferenciaMaster      = REFMASTER.idReferencia)				-- Revisar OK

	LEFT JOIN Ped_Rectificaciones  PEDRECTIF        WITH(NOLOCK) ON (PEDGRALES.idReferencia            = PEDRECTIF.idReferencia)
	LEFT JOIN CvesDocs    PEDRECTIFCVEDOCSRECTIF    WITH(NOLOCK) ON (PEDRECTIF.idCveDocRectificacion   = PEDRECTIFCVEDOCSRECTIF.idClave)
	LEFT JOIN Regimenes   PEDRECTIFCVEDOCSRECTIFREG WITH(NOLOCK) ON (PEDRECTIFCVEDOCSRECTIF.IdGrupo    = PEDRECTIFCVEDOCSRECTIFREG.idGrupo)
	LEFT JOIN CvesDocs    PEDRECTIFCVEDOCSORIG      WITH(NOLOCK) ON (PEDRECTIF.idCveDocRectificacion   = PEDRECTIFCVEDOCSORIG.idClave)
	LEFT JOIN Regimenes   PEDRECTIFCVEDOCSORIGREG   WITH(NOLOCK) ON (PEDRECTIFCVEDOCSRECTIF.IdGrupo    = PEDRECTIFCVEDOCSORIGREG.idGrupo)
	LEFT JOIN Aduanas     PEDRECTIFADUANAORIG       WITH(NOLOCK) ON (PEDRECTIF.idAduanaOriginal        = PEDRECTIFADUANAORIG.idAduana)
	LEFT JOIN Ped_Grales  PEDRECTIFREFORIG          WITH(NOLOCK) ON (PEDRECTIF.idReferenciaOriginal    = PEDRECTIFREFORIG.idReferencia)

	LEFT JOIN Ped_DiferenciasRectificacion PDRECTIFDTA      WITH(NOLOCK) ON (PEDGRALES.idReferencia     = PDRECTIFDTA.idReferencia    AND PDRECTIFDTA.idContribucion = 1)
	LEFT JOIN FormasDePago                 PDRECTIFDTAFP    WITH(NOLOCK) ON (PDRECTIFDTA.idFormaPago    = PDRECTIFDTAFP.idFormapago)
	LEFT JOIN Ped_DiferenciasRectificacion PDRECTIFCC       WITH(NOLOCK) ON (PEDGRALES.idReferencia     = PDRECTIFCC.idReferencia     AND PDRECTIFCC.idContribucion = 2)
	LEFT JOIN FormasDePago                 PDRECTIFCCFP     WITH(NOLOCK) ON (PDRECTIFCC.idFormaPago     = PDRECTIFCCFP.idFormapago)
	LEFT JOIN Ped_DiferenciasRectificacion PDRECTIFIVA      WITH(NOLOCK) ON (PEDGRALES.idReferencia     = PDRECTIFIVA.idReferencia    AND PDRECTIFIVA.idContribucion = 3)
	LEFT JOIN FormasDePago                 PDRECTIFIVAFP    WITH(NOLOCK) ON (PDRECTIFIVA.idFormaPago    = PDRECTIFIVAFP.idFormapago)
	LEFT JOIN Ped_DiferenciasRectificacion PDRECTIFIEPS     WITH(NOLOCK) ON (PEDGRALES.idReferencia     = PDRECTIFIEPS.idReferencia   AND (PDRECTIFIEPS.idContribucion = 5 OR PDRECTIFIEPS.idContribucion = 80))
	LEFT JOIN FormasDePago                 PDRECTIFIEPSFP   WITH(NOLOCK) ON (PDRECTIFIEPS.idFormaPago   = PDRECTIFIEPSFP.idFormapago)
	LEFT JOIN Ped_DiferenciasRectificacion PDRECTIFIGIIGE   WITH(NOLOCK) ON (PEDGRALES.idReferencia     = PDRECTIFIGIIGE.idReferencia AND PDRECTIFIGIIGE.idContribucion = 6)
	LEFT JOIN FormasDePago                 PDRECTIFIGIIGEFP WITH(NOLOCK) ON (PDRECTIFIGIIGE.idFormaPago = PDRECTIFIGIIGEFP.idFormapago)
	LEFT JOIN Ped_DiferenciasRectificacion PDRECTIFREC      WITH(NOLOCK) ON (PEDGRALES.idReferencia     = PDRECTIFREC.idReferencia    AND PDRECTIFREC.idContribucion = 7)
	LEFT JOIN FormasDePago                 PDRECTIFRECFP    WITH(NOLOCK) ON (PDRECTIFREC.idFormaPago    = PDRECTIFRECFP.idFormapago)
	LEFT JOIN Ped_DiferenciasRectificacion PDRECTIFMULT     WITH(NOLOCK) ON (PEDGRALES.idReferencia     = PDRECTIFMULT.idReferencia   AND PDRECTIFMULT.idContribucion = 11)
	LEFT JOIN FormasDePago                 PDRECTIFMULTFP   WITH(NOLOCK) ON (PDRECTIFMULT.idFormaPago   = PDRECTIFMULTFP.idFormapago)
	LEFT JOIN Ped_DiferenciasRectificacion PDRECTIF303      WITH(NOLOCK) ON (PEDGRALES.idReferencia     = PDRECTIF303.idReferencia    AND PDRECTIF303.idContribucion = 12)
	LEFT JOIN FormasDePago                 PDRECTIF303FP    WITH(NOLOCK) ON (PDRECTIF303.idFormaPago    = PDRECTIF303FP.idFormapago)
	LEFT JOIN Ped_DiferenciasRectificacion PDRECTIFRT       WITH(NOLOCK) ON (PEDGRALES.idReferencia     = PDRECTIFRT.idReferencia     AND (PDRECTIFRT.idContribucion = 13 OR PDRECTIFRT.idContribucion = 99))
	LEFT JOIN FormasDePago                 PDRECTIFRTFP     WITH(NOLOCK) ON (PDRECTIFRT.idFormaPago     = PDRECTIFRTFP.idFormapago)
	LEFT JOIN Ped_DiferenciasRectificacion PDRECTIFPRV      WITH(NOLOCK) ON (PEDGRALES.idReferencia     = PDRECTIFPRV.idReferencia    AND PDRECTIFPRV.idContribucion = 15)
	LEFT JOIN FormasDePago                 PDRECTIFPRVFP    WITH(NOLOCK) ON (PDRECTIFPRV.idFormaPago    = PDRECTIFPRVFP.idFormapago)
	LEFT JOIN Ped_DiferenciasRectificacion PDRECTIFEUR      WITH(NOLOCK) ON (PEDGRALES.idReferencia     = PDRECTIFEUR.idReferencia    AND PDRECTIFEUR.idContribucion = 16)
	LEFT JOIN FormasDePago                 PDRECTIFEURFP    WITH(NOLOCK) ON (PDRECTIFEUR.idFormaPago    = PDRECTIFEURFP.idFormapago)
	LEFT JOIN Ped_DiferenciasRectificacion PDRECTIFECI      WITH(NOLOCK) ON (PEDGRALES.idReferencia     = PDRECTIFECI.idReferencia    AND PDRECTIFECI.idContribucion = 24)
	LEFT JOIN FormasDePago                 PDRECTIFECIFP    WITH(NOLOCK) ON (PDRECTIFECI.idFormaPago    = PDRECTIFECIFP.idFormapago)
	LEFT JOIN Ped_DiferenciasRectificacion PDRECTIFCNT      WITH(NOLOCK) ON (PEDGRALES.idReferencia     = PDRECTIFCNT.idReferencia    AND PDRECTIFCNT.idContribucion = 73)
	LEFT JOIN FormasDePago                 PDRECTIFCNTFP    WITH(NOLOCK) ON (PDRECTIFCNT.idFormaPago    = PDRECTIFCNTFP.idFormapago)
	LEFT JOIN Ped_DiferenciasRectificacion PDRECTIFIVAPRV   WITH(NOLOCK) ON (PEDGRALES.idReferencia     = PDRECTIFIVAPRV.idReferencia AND PDRECTIFIVAPRV.idContribucion = 79)
	LEFT JOIN FormasDePago                 PDRECTIFIVAPRVFP WITH(NOLOCK) ON (PDRECTIFIVAPRV.idFormaPago = PDRECTIFIVAPRVFP.idFormapago)

	LEFT JOIN Ped_ContribucionesPedimento  PCPDTA      WITH(NOLOCK) ON (PEDGRALES.idReferencia = PCPDTA.idReferencia    AND PCPDTA.idContribucion = 1)
	LEFT JOIN FormasDePago                 PCPDTAFP    WITH(NOLOCK) ON (PCPDTA.idFormaPago     = PCPDTAFP.idFormapago)
	LEFT JOIN Tasas                        PCPDTAT     WITH(NOLOCK) ON (PCPDTA.idTipoTasa      = PCPDTAT.idTipo)
	LEFT JOIN Ped_ContribucionesPedimento  PCPREC      WITH(NOLOCK) ON (PEDGRALES.idReferencia = PCPREC.idReferencia    AND PCPREC.idContribucion = 7)
	LEFT JOIN FormasDePago                 PCPRECFP    WITH(NOLOCK) ON (PCPREC.idFormaPago     = PCPRECFP.idFormapago)
	LEFT JOIN Tasas                        PCPRECT     WITH(NOLOCK) ON (PCPREC.idTipoTasa      = PCPRECT.idTipo)
	LEFT JOIN Ped_ContribucionesPedimento  PCPOTROS    WITH(NOLOCK) ON (PEDGRALES.idReferencia = PCPOTROS.idReferencia  AND (PCPOTROS.idContribucion = 8 OR PCPOTROS.idContribucion = 9))
	LEFT JOIN FormasDePago                 PCPOTROSFP  WITH(NOLOCK) ON (PCPOTROS.idFormaPago   = PCPOTROSFP.idFormapago)
	LEFT JOIN Tasas                        PCPOTROST   WITH(NOLOCK) ON (PCPOTROS.idTipoTasa    = PCPOTROST.idTipo)
	LEFT JOIN Ped_ContribucionesPedimento  PCPDTI      WITH(NOLOCK) ON (PEDGRALES.idReferencia = PCPDTI.idReferencia    AND PCPDTI.idContribucion = 10)
	LEFT JOIN FormasDePago                 PCPDTIFP    WITH(NOLOCK) ON (PCPDTI.idFormaPago     = PCPDTIFP.idFormapago)
	LEFT JOIN Tasas                        PCPDTIT     WITH(NOLOCK) ON (PCPDTI.idTipoTasa      = PCPDTIT.idTipo)
	LEFT JOIN Ped_ContribucionesPedimento  PCPMULT     WITH(NOLOCK) ON (PEDGRALES.idReferencia = PCPMULT.idReferencia   AND PCPMULT.idContribucion = 11)
	LEFT JOIN FormasDePago                 PCPMULTFP   WITH(NOLOCK) ON (PCPMULT.idFormaPago    = PCPMULTFP.idFormapago)
	LEFT JOIN Tasas                        PCPMULTT    WITH(NOLOCK) ON (PCPMULT.idTipoTasa     = PCPMULTT.idTipo)
	LEFT JOIN Ped_ContribucionesPedimento  PCPRT       WITH(NOLOCK) ON (PEDGRALES.idReferencia = PCPRT.idReferencia     AND (PCPRT.idContribucion = 13 OR PCPRT.idContribucion = 99))
	LEFT JOIN FormasDePago                 PCPRTFP     WITH(NOLOCK) ON (PCPRT.idFormaPago      = PCPRTFP.idFormapago)
	LEFT JOIN Tasas                        PCPRTT      WITH(NOLOCK) ON (PCPRT.idTipoTasa       = PCPRTT.idTipo)
	LEFT JOIN Ped_ContribucionesPedimento  PCPPRV      WITH(NOLOCK) ON (PEDGRALES.idReferencia = PCPPRV.idReferencia    AND PCPPRV.idContribucion = 15)
	LEFT JOIN FormasDePago                 PCPPRVFP    WITH(NOLOCK) ON (PCPPRV.idFormaPago     = PCPPRVFP.idFormapago)
	LEFT JOIN Tasas                        PCPPRVT     WITH(NOLOCK) ON (PCPPRV.idTipoTasa      = PCPPRVT.idTipo)
	LEFT JOIN Ped_ContribucionesPedimento  PCPREU      WITH(NOLOCK) ON (PEDGRALES.idReferencia = PCPREU.idReferencia    AND PCPREU.idContribucion = 17)
	LEFT JOIN FormasDePago                 PCPREUFP    WITH(NOLOCK) ON (PCPREU.idFormaPago     = PCPREUFP.idFormapago)
	LEFT JOIN Tasas                        PCPREUT     WITH(NOLOCK) ON (PCPREU.idTipoTasa      = PCPREUT.idTipo)
	LEFT JOIN Ped_ContribucionesPedimento  PCPECI      WITH(NOLOCK) ON (PEDGRALES.idReferencia = PCPECI.idReferencia    AND PCPECI.idContribucion = 24)
	LEFT JOIN FormasDePago                 PCPECIFP    WITH(NOLOCK) ON (PCPECI.idFormaPago     = PCPECIFP.idFormapago)
	LEFT JOIN Tasas                        PCPECIT     WITH(NOLOCK) ON (PCPECI.idTipoTasa      = PCPECIT.idTipo)
	LEFT JOIN Ped_ContribucionesPedimento  PCPDFC      WITH(NOLOCK) ON (PEDGRALES.idReferencia = PCPDFC.idReferencia    AND (PCPDFC.idContribucion = 34 OR PCPDFC.idContribucion = 67))
	LEFT JOIN FormasDePago                 PCPDFCFP    WITH(NOLOCK) ON (PCPDFC.idFormaPago     = PCPDFCFP.idFormapago)
	LEFT JOIN Tasas                        PCPDFCT     WITH(NOLOCK) ON (PCPDFC.idTipoTasa      = PCPDFCT.idTipo)
	LEFT JOIN Ped_ContribucionesPedimento  PCPITV      WITH(NOLOCK) ON (PEDGRALES.idReferencia = PCPITV.idReferencia    AND (PCPITV.idContribucion = 33 OR PCPITV.idContribucion = 72))
	LEFT JOIN FormasDePago                 PCPITVFP    WITH(NOLOCK) ON (PCPITV.idFormaPago     = PCPITVFP.idFormapago)
	LEFT JOIN Tasas                        PCPITVT     WITH(NOLOCK) ON (PCPITV.idTipoTasa      = PCPITVT.idTipo)
	LEFT JOIN Ped_ContribucionesPedimento  PCPCNT      WITH(NOLOCK) ON (PEDGRALES.idReferencia = PCPCNT.idReferencia    AND PCPCNT.idContribucion = 73)
	LEFT JOIN FormasDePago                 PCPCNTFP    WITH(NOLOCK) ON (PCPCNT.idFormaPago     = PCPCNTFP.idFormapago)
	LEFT JOIN Tasas                        PCPCNTT     WITH(NOLOCK) ON (PCPCNT.idTipoTasa      = PCPCNTT.idTipo)
	LEFT JOIN Ped_ContribucionesPedimento  PCPIVAPRV   WITH(NOLOCK) ON (PEDGRALES.idReferencia = PCPIVAPRV.idReferencia AND PCPIVAPRV.idContribucion = 79)
	LEFT JOIN FormasDePago                 PCPIVAPRVFP WITH(NOLOCK) ON (PCPIVAPRV.idFormaPago  = PCPIVAPRVFP.idFormapago)
	LEFT JOIN Tasas                        PCPIVAPRVT  WITH(NOLOCK) ON (PCPIVAPRV.idTipoTasa   = PCPIVAPRVT.idTipo)
WHERE
	PEDGRALES.Rectificacion = 1
	
