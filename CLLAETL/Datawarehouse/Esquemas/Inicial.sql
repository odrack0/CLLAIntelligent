/****** Object:  Table [dbo].[DimPedimentoFecha]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPedimentoFecha](
	[PedimentoFechaID] [int] IDENTITY(1,1) NOT NULL,
	[PedimentoID] [int] NULL,
	[OrigenidReferencia] [int] NULL,
	[Entrada] [datetime] NULL,
	[Extraccion] [datetime] NULL,
	[Original] [datetime] NULL,
	[Pago] [datetime] NULL,
	[Presentacion] [datetime] NULL,
 CONSTRAINT [PK_DimPedimentoFecha] PRIMARY KEY CLUSTERED 
(
	[PedimentoFechaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedimento]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedimento](
	[PedimentoID] [int] IDENTITY(1,1) NOT NULL,
	[OrigenidReferencia] [int] NULL,
	[OrigenidAgencia] [int] NULL,
	[OrigenidCliente] [int] NULL,
	[Patente] [varchar](4) NULL,
	[AduanaClave] [varchar](3) NULL,
	[AduanaNombre] [varchar](130) NULL,
	[NumeroReferencia] [varchar](30) NULL,
	[NumeroPedimento] [varchar](12) NULL,
	[TipoOperacion] [smallint] NULL,
	[TipoOperacioClave] [varchar](3) NULL,
	[Rectificacion] [bit] NULL,
	[ClaveDocumento] [varchar](3) NULL,
	[ClaveDocumentoRegimenClave] [varchar](3) NULL,
	[ClaveDocumentoRegimenClaveDescripcion] [varchar](120) NULL,
	[AduanaEntSalClaveAduana] [varchar](3) NULL,
	[AduanaEntSalNombreAduana] [varchar](130) NULL,
	[AduanaDespachoClave] [varchar](3) NULL,
	[AduanaDespachoNombre] [varchar](130) NULL,
	[TipoCambioFecha] [datetime] NULL,
	[TipoCambioValor] [money] NULL,
	[ClienteClaveCliente] [int] NULL,
	[ClienteRazonSocial] [varchar](120) NULL,
	[ClienteRFC] [varchar](13) NULL,
	[ClienteDomicilio] [varchar](250) NULL,
	[ClienteCalle] [varchar](80) NULL,
	[ClienteNumeroExterior] [varchar](20) NULL,
	[ClienteNumeroInterior] [varchar](20) NULL,
	[ClienteColonia] [varchar](50) NULL,
	[ClienteCodigoPostal] [varchar](10) NULL,
	[ClienteCiudad] [varchar](80) NULL,
	[ClienteClaveEntidad] [varchar](3) NULL,
	[ClienteEntidadFederativa] [varchar](30) NULL,
	[ClientePaisClaveM3] [varchar](3) NULL,
	[ClientePaisNombrePais] [varchar](60) NULL,
	[ClienteFacturarClaveCliente] [int] NULL,
	[ClienteFacturarRazonSocial] [varchar](120) NULL,
	[ClienteFacturarRFC] [varchar](13) NULL,
	[ClienteFacturarDomicilio] [varchar](250) NULL,
	[ClienteFacturarCalle] [varchar](80) NULL,
	[ClienteFacturarNumeroExterior] [varchar](20) NULL,
	[ClienteFacturarNumeroInterior] [varchar](20) NULL,
	[ClienteFacturarColonia] [varchar](50) NULL,
	[ClienteFacturarCodigoPostal] [varchar](10) NULL,
	[ClienteFacturarCiudad] [varchar](80) NULL,
	[ClienteFacturarClaveEntidad] [varchar](3) NULL,
	[ClienteFacturarEntidadFederativa] [varchar](30) NULL,
	[ClienteFacturarPaisClaveM3] [varchar](3) NULL,
	[ClienteFacturarPaisNombrePais] [varchar](60) NULL,
	[MedioTransporteEntradaClaveTransporte] [smallint] NULL,
	[MedioTransporteEntradaDescripcion] [varchar](45) NULL,
	[MedioTransporteSalidaClaveTransporte] [smallint] NULL,
	[MedioTransporteSalidaDescripcion] [varchar](45) NULL,
	[MedioTransporteArriboClaveTransporte] [smallint] NULL,
	[MedioTransporteArriboDescripcion] [varchar](45) NULL,
	[ValorSegurosMN] [money] NULL,
	[DescuentosAdmisiblesUSD] [money] NULL,
	[FactorActualizacion] [numeric](6, 4) NULL,
	[AfectaIncrementables] [bit] NULL,
	[Bultos] [int] NULL,
	[MarcasNumeros] [varchar](150) NULL,
	[DestinoClave] [smallint] NULL,
	[DestinoDescripcion] [varchar](60) NULL,
	[TramitadorClave] [int] NULL,
	[TramitadorNombre] [varchar](80) NULL,
	[TramitadorRFC] [varchar](13) NULL,
	[TramitadorCURP] [varchar](18) NULL,
	[Observaciones] [varchar](7000) NULL,
	[Acuse] [varchar](8) NULL,
	[ArchivoValidacion] [varchar](15) NULL,
	[BancoAcuse] [varchar](20) NULL,
	[BancoArchivoValidacion] [varchar](15) NULL,
	[BancoFechaPago] [datetime] NULL,
	[BancoHoraPago] [varchar](8) NULL,
	[BancoCaja] [smallint] NULL,
	[BancoOperacionBancaria] [varchar](14) NULL,
	[BancoClave] [int] NULL,
	[BancoNombre] [varchar](120) NULL,
	[Desaduanamiento] [varchar](10) NULL,
	[DesaduanamientoFecha] [datetime] NULL,
	[Aleatorio] [varchar](1) NULL,
	[Anio] [smallint] NULL,
	[TotalVehiculos] [smallint] NULL,
	[PesoBruto] [numeric](14, 3) NULL,
	[PrevalidadorClavePrevalidador] [varchar](3) NULL,
	[PrevalidadorNombrePrevalidador] [varchar](90) NULL,
	[SemanaFechaInicial] [datetime] NULL,
	[SemanaFechaFinal] [datetime] NULL,
	[Semana] [smallint] NULL,
	[NumeroRemesas] [int] NULL,
	[FletesUSD] [money] NULL,
	[SegurosUSD] [money] NULL,
	[EmbalajeUSD] [money] NULL,
	[OtrosIncrementablesUSD] [money] NULL,
	[FactorIncrementables] [float] NULL,
	[TipoActualizacion] [smallint] NULL,
	[Producto] [varchar](15) NULL,
	[Planta] [varchar](20) NULL,
	[ClaveCuentaPago] [varchar](5) NULL,
	[NuevasObservaciones] [varchar](max) NULL,
	[RFCFacturaServicios] [varchar](13) NULL,
	[TipoDeCambio] [money] NULL,
	[ClaveRegimen] [varchar](3) NULL,
	[IncrementablesManual] [bit] NULL,
	[FletesME] [numeric](18, 2) NULL,
	[SegurosME] [numeric](18, 2) NULL,
	[EmbalajeME] [numeric](18, 2) NULL,
	[OtrosIncrementME] [numeric](18, 2) NULL,
	[PaisMonedaFletesClaveM3] [varchar](3) NULL,
	[PaisMonedaFletesNombre] [varchar](60) NULL,
	[PaisMonedaFletesMonedaClave] [varchar](3) NULL,
	[PaisMonedaFletesMonedaNombre] [varchar](30) NULL,
	[PaisMonedaSegurosClaveM3] [varchar](3) NULL,
	[PaisMonedaSegurosNombrePais] [varchar](60) NULL,
	[PaisMonedaSegurosMonedaClave] [varchar](3) NULL,
	[PaisMonedaSeguroMonedaNombre] [varchar](30) NULL,
	[PaisMonedaEmbajalajeClaveM3] [varchar](3) NULL,
	[PaisMonedaEmbalajeNombre] [varchar](60) NULL,
	[PaisMonedaEmbalajeMonedaClave] [varchar](3) NULL,
	[PaisMonedaEmbalajeMonedaNombre] [varchar](30) NULL,
	[PaisMonedaOtrosIncrementablesClaveM3] [varchar](3) NULL,
	[PaisMonedaOtrosIncrementablesNombre] [varchar](60) NULL,
	[PaisMonedaOtrosIncrementablesMonedaClave] [varchar](3) NULL,
	[PaisMonedaOtrosIncrementablesMonedaNombre] [varchar](30) NULL,
	[LineaCaptura] [varchar](50) NULL,
	[TotalImportePagar] [numeric](18, 2) NULL,
	[ArchivoConfimacionPago] [varchar](12) NULL,
	[AcuseConfirmacionPago] [varchar](8) NULL,
	[NumeroTransaccionSAT] [varchar](20) NULL,
 CONSTRAINT [PK_FactPedimento] PRIMARY KEY CLUSTERED 
(
	[PedimentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedimentoContenedor]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedimentoContenedor](
	[PedimentoContenedorID] [int] IDENTITY(1,1) NOT NULL,
	[PedimentoID] [int] NULL,
	[OrigenidReferencia] [int] NULL,
	[OrigenidPedContenedor] [int] NULL,
	[ContenedorNumero] [varchar](12) NULL,
	[ContenedorClave] [smallint] NULL,
	[ContenedorDescripcion] [varchar](80) NULL,
	[Candado] [varchar](35) NULL,
	[CandadoColor] [varchar](1) NULL,
 CONSTRAINT [PK_FactPedimentoContenedor] PRIMARY KEY CLUSTERED 
(
	[PedimentoContenedorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedimentoContribucion]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedimentoContribucion](
	[PedimentoContribucionID] [int] IDENTITY(1,1) NOT NULL,
	[PedimentoID] [int] NULL,
	[OrigenidReferencia] [int] NULL,
	[OrigenidPedContribuciones] [int] NULL,
	[ContribucionClave] [smallint] NULL,
	[ContribucionAbreviacion] [varchar](10) NULL,
	[ContribucionDescripcion] [varchar](120) NULL,
	[ContribucionImporte] [numeric](12, 0) NULL,
	[PorcentajeAplicar] [numeric](9, 5) NULL,
	[FormaPagoClave] [smallint] NULL,
	[FormaPagoDescripcion] [varchar](35) NULL,
	[TasaClave] [smallint] NULL,
	[TasaDescripcion] [varchar](51) NULL,
	[TasaContribucion] [numeric](12, 5) NULL,
 CONSTRAINT [PK_DimPedimentoContribucion] PRIMARY KEY CLUSTERED 
(
	[PedimentoContribucionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedimentoDescarga]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedimentoDescarga](
	[PedimentoDescargaID] [int] IDENTITY(1,1) NOT NULL,
	[PedimentoID] [int] NULL,
	[OrigenidReferencia] [int] NULL,
	[OrigenidDescargasPed] [int] NULL,
	[PatenteOriginal] [varchar](4) NULL,
	[PedimentoOriginal] [varchar](7) NULL,
	[AduanaClava] [varchar](3) NULL,
	[AduanaNombre] [varchar](130) NULL,
	[FechaOriginal] [datetime] NULL,
	[FechaDescarga] [datetime] NULL,
	[FechaPago] [datetime] NULL,
	[FraccionOriginal] [varchar](10) NULL,
	[UnidadMedidaComercialCantidad] [float] NULL,
	[UnidadMedidaComercialClave] [smallint] NULL,
	[UnidadMedidaComercialAbreviacion] [varchar](30) NULL,
	[UnidadMedidaComercialDescripcion] [varchar](30) NULL,
 CONSTRAINT [PK_PedimentoDescarga] PRIMARY KEY CLUSTERED 
(
	[PedimentoDescargaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedimentoDigitalizacion]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedimentoDigitalizacion](
	[PedimentoDigitalizacionID] [int] IDENTITY(1,1) NOT NULL,
	[PedimentoID] [int] NULL,
	[OrigenidReferencia] [int] NULL,
	[OrigenidPedDigitalizacion] [int] NULL,
	[Documento] [varchar](120) NULL,
	[eDocument] [varchar](15) NULL,
	[VUCEMRFCConsulta] [varchar](250) NULL,
	[VUCEMNumeroOperacion] [bigint] NULL,
 CONSTRAINT [PK_FactPedimentoDigitalizacion] PRIMARY KEY CLUSTERED 
(
	[PedimentoDigitalizacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedimentoFactura]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedimentoFactura](
	[PedimentoFacturaID] [int] IDENTITY(1,1) NOT NULL,
	[PedimentoID] [int] NULL,
	[OrigenIdReferencia] [int] NULL,
	[OrigenIdFactura] [int] NULL,
	[OrigenIdGuia] [int] NULL,
	[GuiaGuiaMaster] [varchar](20) NULL,
	[GuiaGuiaHouse] [varchar](20) NULL,
	[GuiaFecha] [datetime] NULL,
	[GuiaBultos] [int] NULL,
	[GuiaArribo] [bit] NULL,
	[GuiaTransportistaMasterClave] [int] NULL,
	[GuiaTransportistaMasterNombre] [varchar](120) NULL,
	[GuiaIdentificadorTranportistaMaster] [varchar](17) NULL,
	[GuiaTransportistaMasterPaisClaveM3] [varchar](3) NULL,
	[GuiaTransportistaMasterPaisNombre] [varchar](60) NULL,
	[GuiaTransportistaHouseClave] [int] NULL,
	[GuiaTransportistaHouseNombre] [varchar](120) NULL,
	[GuiaIdentificadorTransportistaHouse] [varchar](17) NULL,
	[GuiaTransportistaHousePaisClaveM3] [varchar](3) NULL,
	[GuiaTransportistaHousePaisNombre] [varchar](60) NULL,
	[GuiaGuiaObservacionClave] [int] NULL,
	[GuiaPrioridadClave] [int] NULL,
	[GuiaPrioridad] [varchar](50) NULL,
	[GuiaFolio] [varchar](30) NULL,
	[NumeroFactura] [varchar](50) NULL,
	[COVEEDocument] [varchar](15) NULL,
	[COVEFecha] [datetime] NULL,
	[FechaFactura] [datetime] NULL,
	[FechaEntradaOPresentacion] [datetime] NULL,
	[Incoterm] [varchar](3) NULL,
	[IncotermDescripcion] [varchar](65) NULL,
	[PaisMonedaClaveM3] [varchar](3) NULL,
	[PaisMonedaNombrePais] [varchar](60) NULL,
	[ProveedorClaveProveedor] [int] NULL,
	[ProveedorRazonSocial] [varchar](120) NULL,
	[ProveedorTaxNumber] [varchar](30) NULL,
	[ProveedorRFC] [varchar](13) NULL,
	[ProveedorCalle] [varchar](80) NULL,
	[ProveedorNumeroExterior] [varchar](55) NULL,
	[ProveedorNumeroInterior] [varchar](55) NULL,
	[ProveedorColonia] [varchar](120) NULL,
	[ProveedorCodigoPostal] [varchar](10) NULL,
	[ProveedorCiudad] [varchar](80) NULL,
	[ProveedorEntidadClaveEntidad] [varchar](3) NULL,
	[ProveedorEntidadEntidadFederativa] [varchar](30) NULL,
	[ProveedorPaisClaveM3] [varchar](3) NULL,
	[ProveedorPaisNombrePais] [varchar](60) NULL,
	[ProveedorClaveExterna] [varchar](80) NULL,
	[DestinatarioClaveProveedor] [int] NULL,
	[DestinatarioRazonSocial] [varchar](120) NULL,
	[DestinatarioTaxNumber] [varchar](30) NULL,
	[DestinatarioRFC] [varchar](13) NULL,
	[DestinatarioCalle] [varchar](80) NULL,
	[DestinatarioNumeroExterior] [varchar](55) NULL,
	[DestinatarioNumeroInterior] [varchar](55) NULL,
	[DestinatarioColonia] [varchar](120) NULL,
	[DestinatarioCodigoPostal] [varchar](10) NULL,
	[DestinatarioCiudad] [varchar](80) NULL,
	[DestinatarioEntidadClaveEntidad] [varchar](3) NULL,
	[DestinatarioEntidadEntidadFederativa] [varchar](30) NULL,
	[DestinatarioPaisClaveM3] [varchar](3) NULL,
	[DestinatarioPaisNombrePais] [varchar](60) NULL,
	[DestinatarioClaveExterna] [varchar](80) NULL,
	[DestinatarioNumExportadorConfiable] [varchar](50) NULL,
	[DestinatarioNumOperadorEconomico] [varchar](30) NULL,
	[FletesUSD] [numeric](14, 2) NULL,
	[SegurosUSD] [numeric](14, 2) NULL,
	[EmbalajeUSD] [numeric](14, 2) NULL,
	[OtrosIncrementUSD] [numeric](14, 2) NULL,
	[ValoracionClave] [smallint] NULL,
	[ValoracionDescripcion] [varchar](60) NULL,
	[OrdenCompra] [varchar](30) NULL,
	[Notas] [varchar](40) NULL,
	[ImporteUSD] [float] NULL,
	[ImporteME] [float] NULL,
	[ValorMciaME] [float] NULL,
	[ValorMciaUSD] [float] NULL,
	[ValorAgregadoUSD] [float] NULL,
	[PesoBruto] [numeric](18, 3) NULL,
	[EquivalenciaFecha] [datetime] NULL,
	[Equivalencia] [float] NULL,
	[PaisProveedorPaisClaveM3] [varchar](3) NULL,
	[PaisProveedorPaisNombrePais] [varchar](60) NULL,
	[PaisProcedenciaPaisClaveM3] [varchar](3) NULL,
	[PaisProcedenciaPaisNombrePais] [varchar](60) NULL,
	[VinculacionClave] [varchar](1) NULL,
	[VinculacionDescripcion] [varchar](60) NULL,
	[Subdivision] [tinyint] NULL,
	[CentroCostoCentroCosto] [int] NULL,
	[CentroCostoEjecutivo] [varchar](120) NULL,
	[fungeCertificado] [bit] NULL,
	[FletesME] [numeric](18, 2) NULL,
	[SegurosME] [numeric](18, 2) NULL,
	[EmbalajeME] [numeric](18, 2) NULL,
	[OtrosIncrementME] [numeric](18, 2) NULL,
	[PaisMonedaFletesClaveM3] [varchar](3) NULL,
	[PaisMonedaFletesNombre] [varchar](60) NULL,
	[PaisMonedaFletesClaveMoneda] [varchar](3) NULL,
	[PaisMonedaFletesNombreMoneda] [varchar](30) NULL,
	[PaisMonedaSegurosClaveM3] [varchar](3) NULL,
	[PaisMonedaSegurosNombre] [varchar](60) NULL,
	[PaisMonedaSegurosClaveMoneda] [varchar](3) NULL,
	[PaisMonedaSegurosNombreMoneda] [varchar](30) NULL,
	[PaisMonedaEmbalajeClaveM3] [varchar](3) NULL,
	[PaisMonedaEmbalajeNombre] [varchar](60) NULL,
	[PaisMonedaEmbalajeClaveMoneda] [varchar](3) NULL,
	[PaisMonedaEmbalajeNombreMoneda] [varchar](30) NULL,
	[PaisMonedaOtrosIncrementClaveM3] [varchar](3) NULL,
	[PaisMonedaOtrosIncrementNombre] [varchar](60) NULL,
	[PaisMonedaOtrosIncrementClaveMoneda] [varchar](3) NULL,
	[PaisMonedaOtrosIncrementNombreMoneda] [varchar](30) NULL,
	[Notas2] [varchar](20) NULL,
	[Enajenacion] [bit] NULL,
	[FacturaOriginal] [varchar](50) NULL,
	[CertificaOrigen] [varchar](50) NULL,
 CONSTRAINT [PK_FactPedimentoFactura] PRIMARY KEY CLUSTERED 
(
	[PedimentoFacturaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedimentoFacturaPartida]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedimentoFacturaPartida](
	[PedimentoFacturaPartidaID] [int] IDENTITY(1,1) NOT NULL,
	[PedimentoFacturaID] [int] NULL,
	[PedimentoFraccionID] [int] NULL,
	[OrigenidReferencia] [int] NULL,
	[OrigenidPartida] [int] NULL,
	[OrigenidFactura] [int] NULL,
	[Descripcion] [varchar](250) NULL,
	[Marca] [varchar](80) NULL,
	[Modelo] [varchar](80) NULL,
	[NoSerie] [varchar](25) NULL,
	[CantidadComercial] [float] NULL,
	[UnidadMedidaComercialClave] [smallint] NULL,
	[UnidadMedidaComercialDescripcion] [varchar](30) NULL,
	[UnidadMedidaComercialAbreviacion] [varchar](30) NULL,
	[ImporteME] [float] NULL,
	[ImporteUSD] [float] NULL,
	[ValorMercanciaME] [float] NULL,
	[ValorMercanciaUSD] [float] NULL,
	[ValorAgregadoUSD] [float] NULL,
	[PesoBruto] [float] NULL,
	[PaisOrigenClaveM3] [varchar](3) NULL,
	[PaisOrigenNombre] [varchar](60) NULL,
	[FraccionArancelaria] [varchar](10) NULL,
	[FraccionArancelariaDescripcion] [varchar](250) NULL,
	[UnidadMedidaTarifaClave] [smallint] NULL,
	[UnidadMedidaTarifaDescripcion] [varchar](30) NULL,
	[UnidadMedidaTarifaAbreviacion] [varchar](30) NULL,
	[CantidadTarifa] [float] NULL,
	[IdentificadorI] [varchar](3) NULL,
	[IdentificadorIDescripcion] [varchar](500) NULL,
	[IdentificadorIComplemento1] [varchar](30) NULL,
	[IdentificadorIComplemento2] [varchar](50) NULL,
	[IdentificadorIComplemento3] [varchar](40) NULL,
	[IdentificadorII] [varchar](3) NULL,
	[IdentificadorIIDescripcion] [varchar](500) NULL,
	[IdentificadorIIComplemento1] [varchar](30) NULL,
	[IdentificadorIIComplemento2] [varchar](50) NULL,
	[IdentificadorIIComplemento3] [varchar](40) NULL,
	[IdentificadorIII] [varchar](3) NULL,
	[IdentificadorIIIDescripcion] [varchar](500) NULL,
	[IdentificadorIIIComplemento1] [varchar](30) NULL,
	[IdentificadorIIIComplemento2] [varchar](50) NULL,
	[IdentificadorIIIComplemento3] [varchar](40) NULL,
	[OrigenidOrdenFraccion] [int] NULL,
	[NOTA_1] [varchar](100) NULL,
	[NOTA_2] [varchar](100) NULL,
	[NOTA_3] [varchar](100) NULL,
	[NOTA_4] [varchar](100) NULL,
	[NOTA_5] [varchar](100) NULL,
	[PrecioUnitario] [numeric](20, 6) NULL,
	[Commodity] [varchar](4) NULL,
	[Bultos] [int] NULL,
	[OrdenCompra] [varchar](30) NULL,
	[UnidadCOVEClave] [varchar](10) NULL,
	[UnidadCOVEDescripcion] [varchar](100) NULL,
	[CantidadCOVE] [float] NULL,
	[DescripcionCOVE] [varchar](255) NULL,
	[ValoracionClave] [smallint] NULL,
	[ValoracionDescripcion] [varchar](60) NULL,
	[ValorCOVE] [numeric](20, 6) NULL,
	[PartePreCaptura] [varchar](30) NULL,
 CONSTRAINT [PK_FactPedimentoFacturaPartida] PRIMARY KEY CLUSTERED 
(
	[PedimentoFacturaPartidaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedimentoFraccion]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedimentoFraccion](
	[PedimentoFraccionID] [int] IDENTITY(1,1) NOT NULL,
	[PedimentoID] [int] NULL,
	[OrigenidPedFraccion] [int] NULL,
	[OrigenIdReferencia] [int] NULL,
	[FraccionArancelaria] [varchar](10) NULL,
	[Descripcion] [varchar](250) NULL,
	[Marca] [varchar](80) NULL,
	[CantidadTarifa] [float] NULL,
	[PaisOrigenClave] [varchar](3) NULL,
	[PaisOrigenNombre] [varchar](60) NULL,
	[PaisVendedorClave] [varchar](3) NULL,
	[PaisVendedorNombre] [varchar](60) NULL,
	[PaisMonedaClave] [varchar](3) NULL,
	[PaisMonedaNombre] [varchar](60) NULL,
	[PaisMonedaClaveMoneda] [varchar](3) NULL,
	[ImporteME] [money] NULL,
	[ValorAgregado] [money] NULL,
	[ValorFactura] [bigint] NULL,
	[ValorAduana] [bigint] NULL,
	[ValorDolares] [money] NULL,
	[LongDescripcion] [tinyint] NULL,
	[OrdenPedimento] [int] NULL,
	[PaisProcedenciaClave] [varchar](3) NULL,
	[PaisProcedenciaNombre] [varchar](60) NULL,
	[Observaciones] [varchar](max) NULL,
 CONSTRAINT [PK_FactPedimentoFraccion] PRIMARY KEY CLUSTERED 
(
	[PedimentoFraccionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedimentoFraccionContribucion]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedimentoFraccionContribucion](
	[PedimentoFraccionContribucionID] [int] IDENTITY(1,1) NOT NULL,
	[PedimentoFraccionID] [int] NULL,
	[OrigenidReferencia] [int] NULL,
	[OrigenidPedFraccion] [int] NULL,
	[ContribucionClave] [smallint] NULL,
	[ContribucionAbreviacion] [varchar](10) NULL,
	[ContribucionDescrocion] [varchar](120) NULL,
	[ContribucionImporte] [money] NULL,
	[PorcentajeAplicacion] [numeric](8, 5) NULL,
	[FormaPagoClave] [smallint] NULL,
	[FormaPagoDescripcion] [varchar](35) NULL,
	[TasaClave] [smallint] NULL,
	[TasaDescripcion] [varchar](51) NULL,
	[TasaContribucion] [numeric](13, 8) NULL,
 CONSTRAINT [PK_DimPedimentoFraccionContribucion] PRIMARY KEY CLUSTERED 
(
	[PedimentoFraccionContribucionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedimentoFraccionIdentificador]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedimentoFraccionIdentificador](
	[PedimentoFraccionIdentificadorID] [int] IDENTITY(1,1) NOT NULL,
	[PedimentoFraccionID] [int] NULL,
	[OrigenidReferencia] [int] NULL,
	[OrigenidPedFraccion] [int] NULL,
	[Identificador] [varchar](3) NULL,
	[Complemento] [varchar](30) NULL,
	[Complemento2] [varchar](50) NULL,
	[Complemento3] [varchar](40) NULL,
 CONSTRAINT [PK_DimPedimentoFraccionIdentificador] PRIMARY KEY CLUSTERED 
(
	[PedimentoFraccionIdentificadorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedimentoFraccionPermiso]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedimentoFraccionPermiso](
	[PedimentoFraccionPermiso] [int] IDENTITY(1,1) NOT NULL,
	[PedimentoFraccionID] [int] NULL,
	[OrigenidReferencia] [int] NULL,
	[OrigenidPedFraccion] [int] NULL,
	[PermisoClave] [varchar](2) NULL,
	[PermisoDescripcion] [varchar](300) NULL,
	[PermisoFirma] [varchar](40) NULL,
	[PermisoNumero] [varchar](30) NULL,
	[ValorMercancia] [money] NULL,
	[CantidadUnidadMedidaTarifa] [float] NULL,
 CONSTRAINT [PK_DimPedimentoFraccionPermiso] PRIMARY KEY CLUSTERED 
(
	[PedimentoFraccionPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedimentoGastoComprobado]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedimentoGastoComprobado](
	[PedimentoGastoComprobado] [int] IDENTITY(1,1) NOT NULL,
	[PedimentoID] [int] NULL,
	[OrigenidReferencia] [int] NULL,
	[OrigenidGastoComprobado] [int] NULL,
	[OrigenidGuia] [int] NULL,
	[GastoTipo] [int] NULL,
	[GastoDescripcion] [varchar](40) NULL,
	[GastoFecha] [datetime] NULL,
	[GastoConcepto] [varchar](90) NULL,
	[GastoFolio] [varchar](15) NULL,
	[GastoCheque] [varchar](15) NULL,
	[GastoMonto] [float] NULL,
	[GastoIVA] [numeric](18, 2) NULL,
 CONSTRAINT [PK_FactPedimentoGastoCompro] PRIMARY KEY CLUSTERED 
(
	[PedimentoGastoComprobado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedimentoHojaControl]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedimentoHojaControl](
	[PedimentoHojaControlID] [int] IDENTITY(1,1) NOT NULL,
	[PedimentoID] [int] NULL,
	[OrigenidReferencia] [int] NULL,
	[OrigenidControl] [int] NULL,
	[FechaCaptura] [datetime] NULL,
	[Capturo] [varchar](80) NULL,
 CONSTRAINT [PK_PedimentoHojaControl] PRIMARY KEY CLUSTERED 
(
	[PedimentoHojaControlID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedimentoIdentificador]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedimentoIdentificador](
	[PedimentoIdentificadorID] [int] IDENTITY(1,1) NOT NULL,
	[PedimentoID] [int] NULL,
	[OrigenIdReferencia] [int] NULL,
	[Identificador] [varchar](3) NULL,
	[Complemento] [varchar](30) NULL,
	[Complemento2] [varchar](50) NULL,
	[Complemento3] [varchar](40) NULL,
 CONSTRAINT [PK_DimPedimentoIdentificador] PRIMARY KEY CLUSTERED 
(
	[PedimentoIdentificadorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedimentoParteII]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedimentoParteII](
	[PedimentoParteIIID] [int] IDENTITY(1,1) NOT NULL,
	[PedimentoID] [int] NULL,
	[OrigenidReferencia] [int] NULL,
	[OrigenidPedParteII] [int] NULL,
	[NoParteII] [smallint] NULL,
	[DatosVehiculo] [varchar](120) NULL,
 CONSTRAINT [PK_FactPedimentoParteII] PRIMARY KEY CLUSTERED 
(
	[PedimentoParteIIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedimentoParteIIContenedor]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedimentoParteIIContenedor](
	[PedimentoParteIIContenedorID] [int] IDENTITY(1,1) NOT NULL,
	[PedimentoParteIIID] [int] NULL,
	[OrigenidReferencia] [int] NULL,
	[OrigenidPedParteII] [int] NULL,
	[OrigenidPedPIIContenedores] [int] NULL,
	[ContenedorNumero] [varchar](12) NULL,
	[ContenedorClave] [smallint] NULL,
	[ContenedorDescripcion] [varchar](80) NULL,
	[Candado] [varchar](35) NULL,
	[Color] [varchar](1) NULL,
 CONSTRAINT [PK_FactPedimentoParteIIContenedor] PRIMARY KEY CLUSTERED 
(
	[PedimentoParteIIContenedorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedimentoParteIIMercancia]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedimentoParteIIMercancia](
	[PedimentoParteIIMercanciaID] [int] IDENTITY(1,1) NOT NULL,
	[PedimentoParteIIID] [int] NULL,
	[OrigenidReferencia] [int] NULL,
	[OrigenidPedParteII] [int] NULL,
	[OrigenidPedPIIMercancia] [int] NULL,
	[Mercancia] [varchar](500) NULL,
	[CantidadComercial] [numeric](15, 3) NULL,
	[UnidadMedidaComercialClave] [smallint] NULL,
	[UnidadMedidaComercialAbreviacion] [varchar](30) NULL,
	[UnidadMedidaComercialDescripcion] [varchar](30) NULL,
	[CantidadTarifa] [float] NULL,
	[UnidadMedidaTarifaClave] [smallint] NULL,
	[UnidadMedidaTarifaAbreviacion] [varchar](30) NULL,
	[UnidadMedidaDescripcion] [varchar](30) NULL,
	[Peso] [numeric](18, 3) NULL,
	[CantidadEnKg] [numeric](18, 3) NULL,
 CONSTRAINT [PK_PedimentoParteIIMercancia] PRIMARY KEY CLUSTERED 
(
	[PedimentoParteIIMercanciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedimentoRectificacion]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedimentoRectificacion](
	[PedimentoRectificacionID] [int] IDENTITY(1,1) NOT NULL,
	[PedimentoID] [int] NULL,
	[OrigenidReferencia] [int] NULL,
	[OrigenidRectificacion] [int] NULL,
	[OrigenidReferenciaOriginal] [int] NULL,
	[OrigenClaveDocumento] [varchar](3) NULL,
	[OriginalNumeroPedimento] [varchar](12) NULL,
	[RectificacionClavePedimento] [varchar](3) NULL,
	[FechaRectificacion] [datetime] NULL,
	[AduanaClave] [varchar](3) NULL,
	[AduanaNombre] [varchar](130) NULL,
	[FactorActualizacion] [numeric](6, 4) NULL,
	[TasaRecargos] [numeric](10, 5) NULL,
 CONSTRAINT [PK_PedimentoRectificacion] PRIMARY KEY CLUSTERED 
(
	[PedimentoRectificacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedimentoRectificacionDiferencia]    Script Date: 26/11/2020 06:44:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedimentoRectificacionDiferencia](
	[PedimentoRectificacionDiferenciaID] [int] IDENTITY(1,1) NOT NULL,
	[PedimentoID] [int] NULL,
	[OrigenidReferencia] [int] NULL,
	[OrigenidDiferenciaRect] [int] NULL,
	[ContribucionClave] [smallint] NULL,
	[ContribucionAbreviacion] [varchar](10) NULL,
	[ContribucionDescripcion] [varchar](120) NULL,
	[ContribucionImporte] [float] NULL,
	[FormaPagoClave] [smallint] NULL,
	[FormaPagoDescripcion] [varchar](35) NULL,
 CONSTRAINT [PK_DimPedimentoRectificacionDiferencia] PRIMARY KEY CLUSTERED 
(
	[PedimentoRectificacionDiferenciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_FechaPago]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_FechaPago] ON [dbo].[DimPedimentoFecha]
(
	[Pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimentoID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimentoID] ON [dbo].[DimPedimentoFecha]
(
	[PedimentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimentoID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimentoID] ON [dbo].[FactPedimentoContenedor]
(
	[PedimentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimentoID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimentoID] ON [dbo].[FactPedimentoContribucion]
(
	[PedimentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimentoID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimentoID] ON [dbo].[FactPedimentoDescarga]
(
	[PedimentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimentoID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimentoID] ON [dbo].[FactPedimentoDigitalizacion]
(
	[PedimentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimentoID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimentoID] ON [dbo].[FactPedimentoFactura]
(
	[PedimentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimentoFacturaID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimentoFacturaID] ON [dbo].[FactPedimentoFacturaPartida]
(
	[PedimentoFacturaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimentoFraccionID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimentoFraccionID] ON [dbo].[FactPedimentoFacturaPartida]
(
	[PedimentoFraccionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimentoID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimentoID] ON [dbo].[FactPedimentoFraccion]
(
	[PedimentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimetoFraccionID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimetoFraccionID] ON [dbo].[FactPedimentoFraccionContribucion]
(
	[PedimentoFraccionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimentoFraccionID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimentoFraccionID] ON [dbo].[FactPedimentoFraccionIdentificador]
(
	[PedimentoFraccionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimentoFraccionID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimentoFraccionID] ON [dbo].[FactPedimentoFraccionPermiso]
(
	[PedimentoFraccionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimentoID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimentoID] ON [dbo].[FactPedimentoGastoComprobado]
(
	[PedimentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimentoID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimentoID] ON [dbo].[FactPedimentoHojaControl]
(
	[PedimentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimentoID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimentoID] ON [dbo].[FactPedimentoIdentificador]
(
	[PedimentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimentoID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimentoID] ON [dbo].[FactPedimentoParteII]
(
	[PedimentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimentoParteIIID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimentoParteIIID] ON [dbo].[FactPedimentoParteIIContenedor]
(
	[PedimentoParteIIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimentoParteIIID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimentoParteIIID] ON [dbo].[FactPedimentoParteIIMercancia]
(
	[PedimentoParteIIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimentoID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimentoID] ON [dbo].[FactPedimentoRectificacion]
(
	[PedimentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedimentoID]    Script Date: 26/11/2020 06:44:35 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_PedimentoID] ON [dbo].[FactPedimentoRectificacionDiferencia]
(
	[PedimentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimPedimentoFecha]  WITH CHECK ADD  CONSTRAINT [FK_DimPedimentoFecha_FactPedimento] FOREIGN KEY([PedimentoID])
REFERENCES [dbo].[FactPedimento] ([PedimentoID])
GO
ALTER TABLE [dbo].[DimPedimentoFecha] CHECK CONSTRAINT [FK_DimPedimentoFecha_FactPedimento]
GO
ALTER TABLE [dbo].[FactPedimentoContenedor]  WITH CHECK ADD  CONSTRAINT [FK_FactPedimentoContenedor_FactPedimento] FOREIGN KEY([PedimentoID])
REFERENCES [dbo].[FactPedimento] ([PedimentoID])
GO
ALTER TABLE [dbo].[FactPedimentoContenedor] CHECK CONSTRAINT [FK_FactPedimentoContenedor_FactPedimento]
GO
ALTER TABLE [dbo].[FactPedimentoContribucion]  WITH CHECK ADD  CONSTRAINT [FK_DimPedimentoContribucion_FactPedimento] FOREIGN KEY([PedimentoID])
REFERENCES [dbo].[FactPedimento] ([PedimentoID])
GO
ALTER TABLE [dbo].[FactPedimentoContribucion] CHECK CONSTRAINT [FK_DimPedimentoContribucion_FactPedimento]
GO
ALTER TABLE [dbo].[FactPedimentoDescarga]  WITH CHECK ADD  CONSTRAINT [FK_FactPedimentoDescarga_FactPedimento] FOREIGN KEY([PedimentoID])
REFERENCES [dbo].[FactPedimento] ([PedimentoID])
GO
ALTER TABLE [dbo].[FactPedimentoDescarga] CHECK CONSTRAINT [FK_FactPedimentoDescarga_FactPedimento]
GO
ALTER TABLE [dbo].[FactPedimentoDigitalizacion]  WITH CHECK ADD  CONSTRAINT [FK_FactPedimentoDigitalizacion_FactPedimento] FOREIGN KEY([PedimentoID])
REFERENCES [dbo].[FactPedimento] ([PedimentoID])
GO
ALTER TABLE [dbo].[FactPedimentoDigitalizacion] CHECK CONSTRAINT [FK_FactPedimentoDigitalizacion_FactPedimento]
GO
ALTER TABLE [dbo].[FactPedimentoFactura]  WITH CHECK ADD  CONSTRAINT [FK_FactPedimentoFactura_FactPedimento] FOREIGN KEY([PedimentoID])
REFERENCES [dbo].[FactPedimento] ([PedimentoID])
GO
ALTER TABLE [dbo].[FactPedimentoFactura] CHECK CONSTRAINT [FK_FactPedimentoFactura_FactPedimento]
GO
ALTER TABLE [dbo].[FactPedimentoFacturaPartida]  WITH CHECK ADD  CONSTRAINT [FK_FactPedimentoFacturaPartida_FactPedimentoFacturaPartida] FOREIGN KEY([PedimentoFacturaID])
REFERENCES [dbo].[FactPedimentoFactura] ([PedimentoFacturaID])
GO
ALTER TABLE [dbo].[FactPedimentoFacturaPartida] CHECK CONSTRAINT [FK_FactPedimentoFacturaPartida_FactPedimentoFacturaPartida]
GO
ALTER TABLE [dbo].[FactPedimentoFacturaPartida]  WITH CHECK ADD  CONSTRAINT [FK_FactPedimentoFacturaPartida_FactPedimentoFraccion] FOREIGN KEY([PedimentoFraccionID])
REFERENCES [dbo].[FactPedimentoFraccion] ([PedimentoFraccionID])
GO
ALTER TABLE [dbo].[FactPedimentoFacturaPartida] CHECK CONSTRAINT [FK_FactPedimentoFacturaPartida_FactPedimentoFraccion]
GO
ALTER TABLE [dbo].[FactPedimentoFraccion]  WITH CHECK ADD  CONSTRAINT [FK_FactPedimentoFraccion_FactPedimento] FOREIGN KEY([PedimentoID])
REFERENCES [dbo].[FactPedimento] ([PedimentoID])
GO
ALTER TABLE [dbo].[FactPedimentoFraccion] CHECK CONSTRAINT [FK_FactPedimentoFraccion_FactPedimento]
GO
ALTER TABLE [dbo].[FactPedimentoFraccionContribucion]  WITH CHECK ADD  CONSTRAINT [FK_DimPedimentoFraccionContribucion_FactPedimentoFraccion] FOREIGN KEY([PedimentoFraccionID])
REFERENCES [dbo].[FactPedimentoFraccion] ([PedimentoFraccionID])
GO
ALTER TABLE [dbo].[FactPedimentoFraccionContribucion] CHECK CONSTRAINT [FK_DimPedimentoFraccionContribucion_FactPedimentoFraccion]
GO
ALTER TABLE [dbo].[FactPedimentoFraccionIdentificador]  WITH CHECK ADD  CONSTRAINT [FK_DimPedimentoFraccionIdentificador_FactPedimentoFraccion] FOREIGN KEY([PedimentoFraccionID])
REFERENCES [dbo].[FactPedimentoFraccion] ([PedimentoFraccionID])
GO
ALTER TABLE [dbo].[FactPedimentoFraccionIdentificador] CHECK CONSTRAINT [FK_DimPedimentoFraccionIdentificador_FactPedimentoFraccion]
GO
ALTER TABLE [dbo].[FactPedimentoFraccionPermiso]  WITH CHECK ADD  CONSTRAINT [FK_DimPedimentoFraccionPermiso_FactPedimentoFraccion] FOREIGN KEY([PedimentoFraccionID])
REFERENCES [dbo].[FactPedimentoFraccion] ([PedimentoFraccionID])
GO
ALTER TABLE [dbo].[FactPedimentoFraccionPermiso] CHECK CONSTRAINT [FK_DimPedimentoFraccionPermiso_FactPedimentoFraccion]
GO
ALTER TABLE [dbo].[FactPedimentoGastoComprobado]  WITH CHECK ADD  CONSTRAINT [FK_FactPedimentoGastoCompro_FactPedimento] FOREIGN KEY([PedimentoID])
REFERENCES [dbo].[FactPedimento] ([PedimentoID])
GO
ALTER TABLE [dbo].[FactPedimentoGastoComprobado] CHECK CONSTRAINT [FK_FactPedimentoGastoCompro_FactPedimento]
GO
ALTER TABLE [dbo].[FactPedimentoHojaControl]  WITH CHECK ADD  CONSTRAINT [FK_FactPedimentoHojaControl_FactPedimento] FOREIGN KEY([PedimentoID])
REFERENCES [dbo].[FactPedimento] ([PedimentoID])
GO
ALTER TABLE [dbo].[FactPedimentoHojaControl] CHECK CONSTRAINT [FK_FactPedimentoHojaControl_FactPedimento]
GO
ALTER TABLE [dbo].[FactPedimentoIdentificador]  WITH CHECK ADD  CONSTRAINT [FK_DimPedimentoIdentificador_FactPedimento] FOREIGN KEY([PedimentoID])
REFERENCES [dbo].[FactPedimento] ([PedimentoID])
GO
ALTER TABLE [dbo].[FactPedimentoIdentificador] CHECK CONSTRAINT [FK_DimPedimentoIdentificador_FactPedimento]
GO
ALTER TABLE [dbo].[FactPedimentoParteII]  WITH CHECK ADD  CONSTRAINT [FK_FactPedimentoParteII_FactPedimento] FOREIGN KEY([PedimentoID])
REFERENCES [dbo].[FactPedimento] ([PedimentoID])
GO
ALTER TABLE [dbo].[FactPedimentoParteII] CHECK CONSTRAINT [FK_FactPedimentoParteII_FactPedimento]
GO
ALTER TABLE [dbo].[FactPedimentoParteIIContenedor]  WITH CHECK ADD  CONSTRAINT [FK_FactPedimentoParteIIContenedor_FactPedimentoParteII] FOREIGN KEY([PedimentoParteIIID])
REFERENCES [dbo].[FactPedimentoParteII] ([PedimentoParteIIID])
GO
ALTER TABLE [dbo].[FactPedimentoParteIIContenedor] CHECK CONSTRAINT [FK_FactPedimentoParteIIContenedor_FactPedimentoParteII]
GO
ALTER TABLE [dbo].[FactPedimentoParteIIMercancia]  WITH CHECK ADD  CONSTRAINT [FK_FactPedimentoParteIIMercancia_FactPedimentoParteII] FOREIGN KEY([PedimentoParteIIID])
REFERENCES [dbo].[FactPedimentoParteII] ([PedimentoParteIIID])
GO
ALTER TABLE [dbo].[FactPedimentoParteIIMercancia] CHECK CONSTRAINT [FK_FactPedimentoParteIIMercancia_FactPedimentoParteII]
GO
ALTER TABLE [dbo].[FactPedimentoRectificacion]  WITH CHECK ADD  CONSTRAINT [FK_FactPedimentoRectificacion_FactPedimento] FOREIGN KEY([PedimentoID])
REFERENCES [dbo].[FactPedimento] ([PedimentoID])
GO
ALTER TABLE [dbo].[FactPedimentoRectificacion] CHECK CONSTRAINT [FK_FactPedimentoRectificacion_FactPedimento]
GO
ALTER TABLE [dbo].[FactPedimentoRectificacionDiferencia]  WITH CHECK ADD  CONSTRAINT [FK_DimPedimentoRectificacionDiferencia_FactPedimento] FOREIGN KEY([PedimentoID])
REFERENCES [dbo].[FactPedimento] ([PedimentoID])
GO
ALTER TABLE [dbo].[FactPedimentoRectificacionDiferencia] CHECK CONSTRAINT [FK_DimPedimentoRectificacionDiferencia_FactPedimento]
GO
