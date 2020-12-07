USE [CLLA_DWH_SA]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertTrafico]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertTrafico]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertTrafico]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoRectificacionDiferencia]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimentoRectificacionDiferencia]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimentoRectificacionDiferencia]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoRectificacion]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimentoRectificacion]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimentoRectificacion]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoParteIIMercancia]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimentoParteIIMercancia]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimentoParteIIMercancia]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoParteIIContenedor]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimentoParteIIContenedor]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimentoParteIIContenedor]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoParteII]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimentoParteII]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimentoParteII]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoIdentificador]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimentoIdentificador]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimentoIdentificador]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoHojaControl]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimentoHojaControl]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimentoHojaControl]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoGastoComprobado]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimentoGastoComprobado]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimentoGastoComprobado]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoFraccionPermiso]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimentoFraccionPermiso]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimentoFraccionPermiso]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoFraccionIdentificador]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimentoFraccionIdentificador]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimentoFraccionIdentificador]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoFraccionContribucion]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimentoFraccionContribucion]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimentoFraccionContribucion]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoFraccion]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimentoFraccion]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimentoFraccion]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoFecha]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimentoFecha]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimentoFecha]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoFacturaPartida]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimentoFacturaPartida]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimentoFacturaPartida]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoFactura]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimentoFactura]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimentoFactura]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoDigitalizacion]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimentoDigitalizacion]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimentoDigitalizacion]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoDescarga]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimentoDescarga]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimentoDescarga]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoContribucion]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimentoContribucion]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimentoContribucion]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoContenedor]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimentoContenedor]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimentoContenedor]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimento]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertPedimento]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertPedimento]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertGuiaEstatus]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraccionSysExpertGuiaEstatus]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraccionSysExpertGuiaEstatus]
GO
/****** Object:  Index [IX_idRemesa]    Script Date: 26/11/2020 06:37:55 p. m. ******/
DROP INDEX [IX_idRemesa] ON [dbo].[BitacoraCargaSysExpertRemesa] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[BitacoraCargaSysExpertRemesa]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BitacoraCargaSysExpertRemesa]') AND type in (N'U'))
DROP TABLE [dbo].[BitacoraCargaSysExpertRemesa]
GO
/****** Object:  Index [IX_idReferencia]    Script Date: 26/11/2020 06:37:55 p. m. ******/
DROP INDEX [IX_idReferencia] ON [dbo].[BitacoraCargaSysExpertPedimento] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[BitacoraCargaSysExpertPedimento]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BitacoraCargaSysExpertPedimento]') AND type in (N'U'))
DROP TABLE [dbo].[BitacoraCargaSysExpertPedimento]
GO
/****** Object:  Index [IX_idRemesa]    Script Date: 26/11/2020 06:37:55 p. m. ******/
DROP INDEX [IX_idRemesa] ON [dbo].[BitacoraCargadoSysExpertRemesa] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[BitacoraCargadoSysExpertRemesa]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BitacoraCargadoSysExpertRemesa]') AND type in (N'U'))
DROP TABLE [dbo].[BitacoraCargadoSysExpertRemesa]
GO
/****** Object:  Index [IX_idReferencia]    Script Date: 26/11/2020 06:37:55 p. m. ******/
DROP INDEX [IX_idReferencia] ON [dbo].[BitacoraCargadoSysExpertPedimento] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[BitacoraCargadoSysExpertPedimento]    Script Date: 26/11/2020 06:37:55 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BitacoraCargadoSysExpertPedimento]') AND type in (N'U'))
DROP TABLE [dbo].[BitacoraCargadoSysExpertPedimento]
GO
/****** Object:  Table [dbo].[BitacoraCargadoSysExpertPedimento]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BitacoraCargadoSysExpertPedimento](
	[idReferencia] [int] NOT NULL,
	[FechaHora] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Index [IX_idReferencia]    Script Date: 26/11/2020 06:37:55 p. m. ******/
CREATE UNIQUE CLUSTERED INDEX [IX_idReferencia] ON [dbo].[BitacoraCargadoSysExpertPedimento]
(
	[idReferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BitacoraCargadoSysExpertRemesa]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BitacoraCargadoSysExpertRemesa](
	[idRemesa] [int] NULL,
	[FechaHora] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Index [IX_idRemesa]    Script Date: 26/11/2020 06:37:55 p. m. ******/
CREATE UNIQUE CLUSTERED INDEX [IX_idRemesa] ON [dbo].[BitacoraCargadoSysExpertRemesa]
(
	[idRemesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BitacoraCargaSysExpertPedimento]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BitacoraCargaSysExpertPedimento](
	[idReferencia] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Index [IX_idReferencia]    Script Date: 26/11/2020 06:37:55 p. m. ******/
CREATE UNIQUE CLUSTERED INDEX [IX_idReferencia] ON [dbo].[BitacoraCargaSysExpertPedimento]
(
	[idReferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BitacoraCargaSysExpertRemesa]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BitacoraCargaSysExpertRemesa](
	[idRemesa] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Index [IX_idRemesa]    Script Date: 26/11/2020 06:37:55 p. m. ******/
CREATE UNIQUE CLUSTERED INDEX [IX_idRemesa] ON [dbo].[BitacoraCargaSysExpertRemesa]
(
	[idRemesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertGuiaEstatus]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertGuiaEstatus](
	[idEstatusGuias] [int] NULL,
	[idGuia] [int] NULL,
	[idClavesEstatusGuias] [int] NULL,
	[ClaveEstatusGuias] [int] NULL,
	[DescripcionEstatus] [varchar](250) NULL,
	[idAgencia] [int] NULL,
	[Fecha] [datetime] NULL,
	[Hora] [datetime] NULL,
	[Observaciones] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimento]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimento](
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
	[Bacuse] [varchar](20) NULL,
	[BArchivoValidacion] [varchar](15) NULL,
	[BPagoFecha] [datetime] NULL,
	[BpagoHora] [varchar](8) NULL,
	[Bcaja] [smallint] NULL,
	[BOperacionBancaria] [varchar](14) NULL,
	[BancosClave] [int] NULL,
	[BancosNombre] [varchar](120) NULL,
	[Desaduanamiento] [varchar](10) NULL,
	[DesaduanamientoFecha] [datetime] NULL,
	[UsuarioDesaduanaUSU_NAME] [varchar](50) NULL,
	[Aleatorio] [varchar](1) NULL,
	[Anio] [smallint] NULL,
	[PedimentoUSACAN] [varchar](14) NULL,
	[MV_Comisiones] [int] NULL,
	[MV_FletesySeguros] [int] NULL,
	[MV_CargayDescarga] [int] NULL,
	[MV_MaterialesAportados] [int] NULL,
	[MV_TecnologiaAportada] [int] NULL,
	[MV_Regalias] [int] NULL,
	[MV_Reversiones] [int] NULL,
	[MV_GastosNoRelacionados] [int] NULL,
	[MV_FletesySegurosNI] [int] NULL,
	[MV_GastosConstruccion] [int] NULL,
	[MV_InstalacionArmado] [int] NULL,
	[MV_Contribuciones] [numeric](12, 0) NULL,
	[MV_Dividendos] [int] NULL,
	[TotalVehiculos] [smallint] NULL,
	[PesoBruto] [numeric](14, 3) NULL,
	[PrevalidadorClavePrevalidador] [varchar](3) NULL,
	[PrevalidadorNombrePrevalidador] [varchar](90) NULL,
	[FirmaCAAAREM] [varchar](8) NULL,
	[SemanaFechaInicial] [datetime] NULL,
	[SemanaFechaFinal] [datetime] NULL,
	[Semana] [smallint] NULL,
	[ContadorRemesas] [int] NULL,
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
	[EstatusGF] [int] NULL,
	[IncrementablesManual] [bit] NULL,
	[FletesME] [numeric](18, 2) NULL,
	[SegurosME] [numeric](18, 2) NULL,
	[EmbalajeME] [numeric](18, 2) NULL,
	[OtrosIncrementME] [numeric](18, 2) NULL,
	[PaisMonFletesClaveM3] [varchar](3) NULL,
	[PaisMonFletesNombrePais] [varchar](60) NULL,
	[PaisMonFletesClaveMoneda] [varchar](3) NULL,
	[PaisMonFletesNombreMoneda] [varchar](30) NULL,
	[PaisMonSegurosClaveM3] [varchar](3) NULL,
	[PaisMonSegurosNombrePais] [varchar](60) NULL,
	[PaisMonSegurosClaveMoneda] [varchar](3) NULL,
	[PaisMonSegurosNombreMoneda] [varchar](30) NULL,
	[PaisMonEmbalajeClaveM3] [varchar](3) NULL,
	[PaisMonEmbalajeNombrePais] [varchar](60) NULL,
	[PaisMonEmbalajeClaveMoneda] [varchar](3) NULL,
	[PaisMonEmbalajeNombreMoneda] [varchar](30) NULL,
	[PaisMonOtrosIncrementClaveM3] [varchar](3) NULL,
	[PaisMonOtrosIncrementNombrePais] [varchar](60) NULL,
	[PaisMonOtrosIncrementClaveMoneda] [varchar](3) NULL,
	[PaisMonOtrosIncrementNombreMoneda] [varchar](30) NULL,
	[LineaCaptura] [varchar](50) NULL,
	[TotalImportePagar] [numeric](18, 2) NULL,
	[ArchivoConfimacionPago] [varchar](12) NULL,
	[AcuseConfirmacionPago] [varchar](8) NULL,
	[NumeroTransaccionSAT] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoContenedor]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimentoContenedor](
	[idPedContenedor] [int] NULL,
	[idReferencia] [int] NULL,
	[NumeroContenedor] [varchar](12) NULL,
	[idContenedor] [int] NULL,
	[ClaveContenedor] [smallint] NULL,
	[DescripcionContenedor] [varchar](80) NULL,
	[Candado] [varchar](35) NULL,
	[CandadoColor] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoContribucion]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimentoContribucion](
	[idPedContribuciones] [int] NULL,
	[idReferencia] [int] NULL,
	[idContribucion] [int] NULL,
	[ClaveContribucion] [smallint] NULL,
	[ct_Descripcion] [varchar](120) NULL,
	[Abreviacion] [varchar](10) NULL,
	[PorcentajeAplicar] [numeric](9, 5) NULL,
	[idFormaPago] [int] NULL,
	[ClaveFormaPago] [smallint] NULL,
	[fp_Descripcion] [varchar](35) NULL,
	[ImporteContribucion] [numeric](12, 0) NULL,
	[idTipoTasa] [int] NULL,
	[TipoTasa] [smallint] NULL,
	[TasaDescripcion] [varchar](51) NULL,
	[TasaContribucion] [numeric](12, 5) NULL,
	[CaracteristicasCalculo] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoDescarga]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimentoDescarga](
	[idDescargasPed] [int] NULL,
	[idReferencia] [int] NULL,
	[PatenteOriginal] [varchar](4) NULL,
	[PedimentoOriginal] [varchar](7) NULL,
	[idAduanaOriginal] [int] NULL,
	[ClaveAduana] [varchar](3) NULL,
	[NombreAduana] [varchar](130) NULL,
	[FechaOriginal] [datetime] NULL,
	[FechaDescarga] [datetime] NULL,
	[FraccionOriginal] [varchar](10) NULL,
	[CantidadUMC] [float] NULL,
	[idUMC] [int] NULL,
	[ClaveUnidad] [smallint] NULL,
	[DescripcionUnidad] [varchar](30) NULL,
	[AbreviacionUnidad] [varchar](30) NULL,
	[FechaPago] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoDigitalizacion]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimentoDigitalizacion](
	[idPed_Digitalizacion] [int] NULL,
	[idReferencia] [int] NULL,
	[Documento] [varchar](120) NULL,
	[eDocument] [varchar](15) NULL,
	[idTipoDocumentoVU] [int] NULL,
	[VURfcConsulta] [varchar](250) NULL,
	[VUNumeroOperacion] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoFactura]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimentoFactura](
	[OrigenIdReferencia] [int] NULL,
	[OrigenIdFactura] [int] NULL,
	[OrigenIdGuia] [int] NULL,
	[GuiaGuiaMaster] [varchar](20) NULL,
	[GuiaGuiaHouse] [varchar](20) NULL,
	[GuiaFecha] [datetime] NULL,
	[GuiaTransportMasterClave] [int] NULL,
	[GuiaTransportMasterNombre] [varchar](120) NULL,
	[GuiaTransportHouseClave] [int] NULL,
	[GuiaTransportHouserNombre] [varchar](120) NULL,
	[GuiaBultos] [int] NULL,
	[GuiaArribo] [bit] NULL,
	[GuiaidBultos] [int] NULL,
	[GuiaIdenTranspoMaster] [varchar](17) NULL,
	[GuiaIdenTranspoHouse] [varchar](17) NULL,
	[GuiaPaisTransporMasterClaveM3] [varchar](3) NULL,
	[GuiaPaisTransporMasterNombrePais] [varchar](60) NULL,
	[GuiaidPaisTransporHouse] [int] NULL,
	[GuiaPaisTransporHouseClaveM3] [varchar](3) NULL,
	[GuiaPaisTransporHouseNombrePais] [varchar](60) NULL,
	[GuiaGuiaObservacionClave] [int] NULL,
	[GuiaPrioridadClave] [int] NULL,
	[GuiaPrioridad] [varchar](50) NULL,
	[GuiaFolio] [varchar](30) NULL,
	[NumeroFactura] [varchar](50) NULL,
	[COVEEDocument] [varchar](15) NULL,
	[COVEFecha] [datetime] NULL,
	[FechaFactura] [datetime] NULL,
	[FechaEntPres] [datetime] NULL,
	[idIncoterm] [int] NULL,
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
	[Proveedoremail] [varchar](80) NULL,
	[ProveedorClaveExternaExport] [varchar](80) NULL,
	[DestinatarioClaveProveedor] [int] NULL,
	[DestinatarioRazonSocial] [varchar](120) NULL,
	[DestinatarioTaxNumber] [varchar](30) NULL,
	[DestinatarioRFC] [varchar](13) NULL,
	[DestinatarioCURP] [varchar](18) NULL,
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
	[Destinatarioemail] [varchar](80) NULL,
	[DestinatarioNumExportadorConfiable] [varchar](50) NULL,
	[DestinatarioClaveExternaExport] [varchar](80) NULL,
	[DestinatarioNumOperadorEconomico] [varchar](30) NULL,
	[FletesUSD] [numeric](14, 2) NULL,
	[SegurosUSD] [numeric](14, 2) NULL,
	[EmbalajeUSD] [numeric](14, 2) NULL,
	[OtrosIncrementUSD] [numeric](14, 2) NULL,
	[ValoracionClaveValoracion] [smallint] NULL,
	[Valoracionmv_Descripcion] [varchar](60) NULL,
	[P_O] [varchar](30) NULL,
	[Notas] [varchar](40) NULL,
	[TipoOperacion] [varchar](1) NULL,
	[ImporteUSD] [float] NULL,
	[ImporteME] [float] NULL,
	[ValorMciaME] [float] NULL,
	[ValorMciaUSD] [float] NULL,
	[ValorAgregadoUSD] [float] NULL,
	[PesoBruto] [numeric](18, 3) NULL,
	[EquivalenciaFecha] [datetime] NULL,
	[Equivalencia] [float] NULL,
	[EstatusClave] [int] NULL,
	[EstatusEstatus] [varchar](50) NULL,
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
	[PaisMonFletesClaveM3] [varchar](3) NULL,
	[PaisMonFletesNombrePais] [varchar](60) NULL,
	[PaisMonFletesClaveMoneda] [varchar](3) NULL,
	[PaisMonFletesNombreMoneda] [varchar](30) NULL,
	[PaisMonSegurosClaveM3] [varchar](3) NULL,
	[PaisMonSegurosNombrePais] [varchar](60) NULL,
	[PaisMonSegurosClaveMoneda] [varchar](3) NULL,
	[PaisMonSegurosNombreMoneda] [varchar](30) NULL,
	[PaisMonEmbalajeClaveM3] [varchar](3) NULL,
	[PaisMonEmbalajeNombrePais] [varchar](60) NULL,
	[PaisMonEmbalajeClaveMoneda] [varchar](3) NULL,
	[PaisMonEmbalajeNombreMoneda] [varchar](30) NULL,
	[PaisMonOtrosIncrementClaveM3] [varchar](3) NULL,
	[PaisMonOtrosIncrementNombrePais] [varchar](60) NULL,
	[PaisMonOtrosIncrementClaveMoneda] [varchar](3) NULL,
	[PaisMonOtrosIncrementNombreMoneda] [varchar](30) NULL,
	[Notas2] [varchar](20) NULL,
	[Enajenacion] [bit] NULL,
	[FacturaOriginal] [varchar](50) NULL,
	[CertificaOrigen] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoFacturaPartida]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimentoFacturaPartida](
	[idReferencia] [int] NULL,
	[idPartida] [int] NULL,
	[idFactura] [int] NULL,
	[idParte] [int] NULL,
	[Descripcion] [varchar](250) NULL,
	[Marca] [varchar](80) NULL,
	[Modelo] [varchar](80) NULL,
	[NoSerie] [varchar](25) NULL,
	[CantidadComercial] [float] NULL,
	[idUMC] [int] NULL,
	[UnidadMedidaComercialClaveIUnidad] [smallint] NULL,
	[UnidadMedidaComercialDescripcion] [varchar](30) NULL,
	[UnidadMedidaComercialAbreviacion] [varchar](30) NULL,
	[UnidadMedidaComercialAbreviacion2] [varchar](30) NULL,
	[UnidadMedidaComercialClaveCOVE] [varchar](10) NULL,
	[UnidadMedidaComercialUMCOVEValidas] [varchar](100) NULL,
	[ImporteME] [float] NULL,
	[ImporteUSD] [float] NULL,
	[ValorMciaME] [float] NULL,
	[ValorMciaUSD] [float] NULL,
	[ValorAgregadoUSD] [float] NULL,
	[PesoBruto] [float] NULL,
	[idPaisOrigen] [int] NULL,
	[PaisOrigenClaveM3] [varchar](3) NULL,
	[PaisOrigenNombrePais] [varchar](60) NULL,
	[idFraccion] [int] NULL,
	[TIGIEFraccion] [varchar](10) NULL,
	[TIGIEtg_Descripcion] [varchar](250) NULL,
	[TIGIEidUnidad] [int] NULL,
	[TGIEUnidadClaveIUnidad] [smallint] NULL,
	[TGIEUnidadDescripcion] [varchar](30) NULL,
	[TGIEUnidadAbreviacion] [varchar](30) NULL,
	[TGIEUnidadAbreviacion2] [varchar](30) NULL,
	[TGIEUnidadClaveCOVE] [varchar](10) NULL,
	[TGIEUnidadUMCOVEValidas] [varchar](100) NULL,
	[CantidadTarifa] [float] NULL,
	[idIdentificador] [int] NULL,
	[IdentificadorIdentificador] [varchar](3) NULL,
	[IdentificadoritDescripcion] [varchar](500) NULL,
	[IdentificadorNivel] [varchar](1) NULL,
	[Complemento] [varchar](30) NULL,
	[Desaduanamiento] [varchar](8) NULL,
	[idOrdenFraccion] [int] NULL,
	[CantidadSaldo] [float] NULL,
	[Explosionado] [bit] NULL,
	[EstatusPPS] [int] NULL,
	[NOTA_1] [varchar](100) NULL,
	[NOTA_2] [varchar](100) NULL,
	[NOTA_3] [varchar](100) NULL,
	[NOTA_4] [varchar](100) NULL,
	[NOTA_5] [varchar](100) NULL,
	[PrecioUnitario] [numeric](20, 6) NULL,
	[ValorNoOriginario] [numeric](18, 2) NULL,
	[ValorRetorno] [numeric](18, 2) NULL,
	[Commodity] [varchar](4) NULL,
	[Bultos] [int] NULL,
	[idPartidaOriginal] [int] NULL,
	[OrdenCompra] [varchar](30) NULL,
	[idIdentificador2] [int] NULL,
	[Identificador2Identificador] [varchar](3) NULL,
	[Identificador2itDescripcion] [varchar](500) NULL,
	[Identificador2Nivel] [varchar](1) NULL,
	[Complemento2_1] [varchar](30) NULL,
	[Complemento2_2] [varchar](50) NULL,
	[Comlpemento2_3] [varchar](40) NULL,
	[idIdentificador3] [int] NULL,
	[Identificador3Identificador] [varchar](3) NULL,
	[Identificador3itDescripcion] [varchar](500) NULL,
	[Identificador3Nivel] [varchar](1) NULL,
	[Complemento3_1] [varchar](30) NULL,
	[Complemento3_2] [varchar](50) NULL,
	[Complemento3_3] [varchar](40) NULL,
	[idUnidadCOVE] [int] NULL,
	[UnidadCOVEClave] [varchar](10) NULL,
	[UnidadCOVEDescripcion] [varchar](100) NULL,
	[UnidadCOVEAbreviacion] [varchar](30) NULL,
	[CantidadCOVE] [float] NULL,
	[DescripcionCOVE] [varchar](255) NULL,
	[idValoracion] [int] NULL,
	[ValoracionClaveValoracion] [smallint] NULL,
	[Valoracionmv_Descripcion] [varchar](60) NULL,
	[ValorCOVE] [numeric](20, 6) NULL,
	[subModelo] [varchar](50) NULL,
	[Lote] [varchar](50) NULL,
	[POCantidad] [int] NULL,
	[PartePreCaptura] [varchar](30) NULL,
	[CertificaOrigen] [varchar](50) NULL,
	[Complemento2] [varchar](50) NULL,
	[Complemento3] [varchar](40) NULL,
	[idCategoria] [int] NULL,
	[idTipoDeMercancia] [int] NULL,
	[TipoDeMercancia] [int] NULL,
	[TipoDeMercanciaClave] [varchar](3) NULL,
	[TipoDeMercanciaDescripcion] [varchar](60) NULL,
	[TipoDeMercanciaClaveTipoMercancia] [int] NULL,
	[TipoDeMercanciaNombreTipoMercancia] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoFecha]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimentoFecha](
	[idPedFechas] [int] NULL,
	[idReferencia] [int] NULL,
	[idFecha] [int] NULL,
	[Clave] [smallint] NULL,
	[Descripcion] [varchar](30) NULL,
	[DescImpresion] [varchar](30) NULL,
	[Fecha] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoFraccion]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimentoFraccion](
	[idReferencia] [int] NULL,
	[idFraccion] [int] NULL,
	[idPedFraccion] [int] NULL,
	[Fraccion] [varchar](10) NULL,
	[Descripcion] [varchar](250) NULL,
	[Marca] [varchar](80) NULL,
	[CantidadComercial] [numeric](15, 3) NULL,
	[idUMC] [int] NULL,
	[ClaveUnidad] [smallint] NULL,
	[Abreviacion] [varchar](30) NULL,
	[DescripcionUMC] [varchar](30) NULL,
	[CantidadTarifa] [float] NULL,
	[idPaisOrigen] [int] NULL,
	[PaisOrigenClave] [varchar](3) NULL,
	[PaisOrigenNombre] [varchar](60) NULL,
	[idPaisVendedor] [int] NULL,
	[PaisVendedorClave] [varchar](3) NULL,
	[PaisVendedorNombre] [varchar](60) NULL,
	[idPaisMoneda] [int] NULL,
	[PaisMonedaClave] [varchar](3) NULL,
	[PaisMonedaNombre] [varchar](60) NULL,
	[PaisMonedaMoneda] [varchar](3) NULL,
	[ImporteME] [money] NULL,
	[ValorAgregado] [money] NULL,
	[idValoracion] [int] NULL,
	[idVinculacion] [int] NULL,
	[ValorFactura] [bigint] NULL,
	[ValorAduana] [bigint] NULL,
	[ValorDolares] [money] NULL,
	[LongDescripcion] [tinyint] NULL,
	[ORDEN] [int] NULL,
	[idPaisProcedencia] [int] NULL,
	[PaisProcedenciaClave] [varchar](3) NULL,
	[PaisProcedenciaNombre] [varchar](60) NULL,
	[NuevasObservaciones] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoFraccionContribucion]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimentoFraccionContribucion](
	[idReferencia] [int] NULL,
	[idPedFraccion] [int] NULL,
	[idFracContribuciones] [int] NULL,
	[idContribucion] [int] NULL,
	[ClaveContribucion] [smallint] NULL,
	[Abreviacion] [varchar](10) NULL,
	[ct_Descripcion] [varchar](120) NULL,
	[PorcentajeAplicacion] [numeric](8, 5) NULL,
	[idFormaPago] [int] NULL,
	[ClaveFormaPago] [smallint] NULL,
	[fp_Descripcion] [varchar](35) NULL,
	[idTipoTasa] [int] NULL,
	[TipoTasa] [smallint] NULL,
	[DescripcionTasa] [varchar](51) NULL,
	[ImporteContribucion] [money] NULL,
	[TipoCuotaCompensatoria] [varchar](1) NULL,
	[TasaContribucion] [numeric](13, 8) NULL,
	[PedimentoCompensacion] [varchar](12) NULL,
	[CaracteristicasCalculo] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoFraccionIdentificador]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimentoFraccionIdentificador](
	[idReferencia] [int] NULL,
	[idPedFraccion] [int] NULL,
	[idIdentificadorFraccion] [int] NULL,
	[idIdentificador] [int] NULL,
	[Identificador] [varchar](3) NULL,
	[Complemento] [varchar](30) NULL,
	[Complemento2] [varchar](50) NULL,
	[Complemento3] [varchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoFraccionPermiso]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimentoFraccionPermiso](
	[idReferencia] [int] NULL,
	[idPedFraccion] [int] NULL,
	[idPermisosFraccion] [int] NULL,
	[idPermiso] [int] NULL,
	[ClavePermiso] [varchar](2) NULL,
	[Descripcion] [varchar](300) NULL,
	[FirmaPermiso] [varchar](40) NULL,
	[NumeroPermiso] [varchar](30) NULL,
	[ValorComercialDlls] [money] NULL,
	[Cantidad_UMT] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoGastoComprobado]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimentoGastoComprobado](
	[idGastoComprobado] [int] NULL,
	[idGasto] [int] NULL,
	[TipoGasto] [int] NULL,
	[DescGasto] [varchar](40) NULL,
	[idGuia] [int] NULL,
	[CONCEPTO] [varchar](90) NULL,
	[Folio] [varchar](15) NULL,
	[Monto] [float] NULL,
	[Cheque] [varchar](15) NULL,
	[idReferenciaGasto] [int] NULL,
	[FechaFolio] [datetime] NULL,
	[Iva] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoHojaControl]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimentoHojaControl](
	[idControl] [int] NULL,
	[idReferencia] [int] NULL,
	[FechaCaptura] [datetime] NULL,
	[Capturo] [varchar](80) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoIdentificador]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimentoIdentificador](
	[idIdentificadorPed] [int] NULL,
	[idReferencia] [int] NULL,
	[idIdentificador] [int] NULL,
	[Identificador] [varchar](3) NULL,
	[Complemento] [varchar](30) NULL,
	[Complemento2] [varchar](50) NULL,
	[Complemento3] [varchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoParteII]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimentoParteII](
	[idPedParteII] [int] NULL,
	[idReferencia] [int] NULL,
	[NoParteII] [smallint] NULL,
	[DatosVehiculo] [varchar](120) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoParteIIContenedor]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimentoParteIIContenedor](
	[idReferencia] [int] NULL,
	[idPedParteII] [int] NULL,
	[idPedPIIContenedores] [int] NULL,
	[idContenedor] [int] NULL,
	[Clave] [smallint] NULL,
	[Descripcion] [varchar](80) NULL,
	[NumeroContenedor] [varchar](12) NULL,
	[Candado] [varchar](35) NULL,
	[Color] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoParteIIMercancia]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimentoParteIIMercancia](
	[idReferencia] [int] NULL,
	[idPedParteII] [int] NULL,
	[idPedPIIMercancia] [int] NULL,
	[Mercancia] [varchar](500) NULL,
	[CantidadComercial] [numeric](15, 3) NULL,
	[CantidadTarifa] [float] NULL,
	[idUnidad] [int] NULL,
	[ClaveUnidadComercial] [smallint] NULL,
	[AbreviacionUnidadComercial] [varchar](30) NULL,
	[DescripcionUnidadComercial] [varchar](30) NULL,
	[idUnidadTarifa] [int] NULL,
	[ClaveUnidadTarifa] [smallint] NULL,
	[AbreviacionUnidadTarifa] [varchar](30) NULL,
	[DescripcionUnidadTarifa] [varchar](30) NULL,
	[Peso] [numeric](18, 3) NULL,
	[CantidadEnKg] [numeric](18, 3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoRectificacion]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimentoRectificacion](
	[idRectificacion] [int] NULL,
	[idReferencia] [int] NULL,
	[idCveDocRectificacion] [int] NULL,
	[CveDocRectificacion] [varchar](3) NULL,
	[PedimentoOriginal] [varchar](12) NULL,
	[idCveDocOriginal] [int] NULL,
	[CveDocOriginal] [varchar](3) NULL,
	[FechaRectificacion] [datetime] NULL,
	[idAduanaOriginal] [int] NULL,
	[ClaveAduana] [varchar](3) NULL,
	[NombreAduana] [varchar](130) NULL,
	[FactorActualizacion] [numeric](6, 4) NULL,
	[TasaRecargos] [numeric](10, 5) NULL,
	[idReferenciaOriginal] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertPedimentoRectificacionDiferencia]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertPedimentoRectificacionDiferencia](
	[idDiferenciasRect] [int] NULL,
	[idReferencia] [int] NULL,
	[idContribucion] [int] NULL,
	[ClaveContribucion] [smallint] NULL,
	[Abreviacion] [varchar](10) NULL,
	[ct_Descripcion] [varchar](120) NULL,
	[idFormaPago] [int] NULL,
	[ClaveFormaPago] [smallint] NULL,
	[fp_Descripcion] [varchar](35) NULL,
	[Importe] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraccionSysExpertTrafico]    Script Date: 26/11/2020 06:37:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraccionSysExpertTrafico](
	[idTrafico] [int] NOT NULL,
	[idSituacion] [int] NOT NULL,
	[idReferencia] [int] NULL,
	[NumeroReferencia] [varchar](30) NULL,
	[idRemesa] [int] NULL,
	[NumeroRemesa] [int] NULL,
	[idFactura] [int] NULL,
	[NumeroFactura] [varchar](50) NULL,
	[idGuia] [int] NULL,
	[GuiaMaster] [varchar](20) NULL,
	[GuiaHouse] [varchar](20) NULL,
	[ClaveSituacion] [int] NULL,
	[DescripcionSituacion] [varchar](50) NULL,
	[FechaMovimiento] [datetime] NULL,
	[HoraMovimiento] [varchar](8) NULL,
	[idUsuario] [int] NULL,
	[NombreEjecuto] [varchar](50) NULL,
	[Dato] [varchar](50) NULL,
	[Observaciones] [varchar](250) NULL
) ON [PRIMARY]
GO
