USE [CLLASausage]
GO
/****** Object:  Table [dbo].[ExpedienteDigital]    Script Date: 07/12/2020 08:43:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpedienteDigital](
	[IdExpedienteDigital] [int] IDENTITY(1,1) NOT NULL,
	[IdReferenciaSysExpert] [int] NOT NULL,
	[IdAgenciaSysExpert] [int] NOT NULL,
	[ExpedienteCompleto] [bit] NOT NULL,
	[ExpedienteFinalizado] [bit] NOT NULL,
	[ExpedienteSincronizadoSysExpertWeb] [bit] NOT NULL,
	[ClaveClienteSysExpert] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ExpedienteDigital] PRIMARY KEY CLUSTERED 
(
	[IdExpedienteDigital] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpedienteDigitalArchivo]    Script Date: 07/12/2020 08:43:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpedienteDigitalArchivo](
	[IdExpedienteDigitalArchivo] [int] IDENTITY(1,1) NOT NULL,
	[IdExpedienteDigital] [int] NOT NULL,
	[IdExpedienteDigitalProcesamientoArchivo] [int] NOT NULL,
	[NomenclaturaRutaCompletaFinalizado] [nvarchar](max) NOT NULL,
	[RutaCompletaFinalizado] [nvarchar](max) NOT NULL,
	[Finalizado] [datetime] NULL,
	[Ruta] [nvarchar](max) NULL,
	[Nombre] [nvarchar](max) NULL,
	[Extension] [nvarchar](max) NULL,
	[Visible] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ExpedienteDigitalArchivo] PRIMARY KEY CLUSTERED 
(
	[IdExpedienteDigitalArchivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpedienteDigitalBitacora]    Script Date: 07/12/2020 08:43:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpedienteDigitalBitacora](
	[IdExpedienteDigitalBitacora] [int] IDENTITY(1,1) NOT NULL,
	[IdExpedienteDigital] [int] NOT NULL,
	[IdExpedienteDigitalEventoBitacora] [int] NOT NULL,
	[FechaHora] [datetime] NOT NULL,
	[Observaciones] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ExpedienteDigitalBitacora] PRIMARY KEY CLUSTERED 
(
	[IdExpedienteDigitalBitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpedienteDigitalConfiguracion]    Script Date: 07/12/2020 08:43:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpedienteDigitalConfiguracion](
	[IdExpedienteDigitalConfiguracion] [int] IDENTITY(1,1) NOT NULL,
	[IdAgenciaSysExpert] [int] NOT NULL,
	[NomenclaturaRutaRaizProcesamiento] [nvarchar](max) NOT NULL,
	[NomenclaturaRutaRaizCompletado] [nvarchar](max) NOT NULL,
	[ComprimirDespuesFinalizado] [bit] NOT NULL,
	[NomenclaturaNombreComprimidoProcesamiento] [nvarchar](max) NULL,
	[NomenclaturaNombreComprimidoFinalizado] [nvarchar](max) NULL,
	[EliminarDespuesFinalizado] [bit] NOT NULL,
	[Habilitado] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ExpedienteDigitalConfiguracion] PRIMARY KEY CLUSTERED 
(
	[IdExpedienteDigitalConfiguracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpedienteDigitalConfiguracionArchivo]    Script Date: 07/12/2020 08:43:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpedienteDigitalConfiguracionArchivo](
	[IdExpedienteDigitalConfiguracionArchivo] [int] IDENTITY(1,1) NOT NULL,
	[IdExpedienteDigitalConfiguracion] [int] NOT NULL,
	[IdExpedienteDigitalTipoArchivo] [int] NOT NULL,
	[NomenclauturaNombreProcesamiento] [nvarchar](max) NOT NULL,
	[NomenclauturaNombreFinalizado] [nvarchar](max) NOT NULL,
	[Habilitado] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ExpedienteDigitalConfiguracionArchivo] PRIMARY KEY CLUSTERED 
(
	[IdExpedienteDigitalConfiguracionArchivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpedienteDigitalConfiguracionArchivoCliente]    Script Date: 07/12/2020 08:43:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpedienteDigitalConfiguracionArchivoCliente](
	[IdExpedienteDigitalConfiguracionArchivoCliente] [int] IDENTITY(1,1) NOT NULL,
	[ClaveClienteSysExpert] [int] NOT NULL,
	[IdExpedienteDigitalConfiguracionArchivo] [int] NOT NULL,
	[NomenclauturaNombreFinalizado] [nvarchar](max) NOT NULL,
	[Habilitado] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ExpedienteDigitalConfiguracionArchivoCliente] PRIMARY KEY CLUSTERED 
(
	[IdExpedienteDigitalConfiguracionArchivoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpedienteDigitalConfiguracionCliente]    Script Date: 07/12/2020 08:43:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpedienteDigitalConfiguracionCliente](
	[IdExpedienteDigitalConfiguracionCliente] [int] IDENTITY(1,1) NOT NULL,
	[ClaveClienteSysExpert] [int] NOT NULL,
	[NomenclaturaRutaRaizCompletado] [nvarchar](max) NOT NULL,
	[Habilitado] [bit] NOT NULL,
	[IdExpedienteDigitalConfiguracion] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ExpedienteDigitalConfiguracionCliente] PRIMARY KEY CLUSTERED 
(
	[IdExpedienteDigitalConfiguracionCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpedienteDigitalEventoBitacora]    Script Date: 07/12/2020 08:43:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpedienteDigitalEventoBitacora](
	[IdExpedienteDigitalEventoBitacora] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Habilitado] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ExpedienteDigitalEventoBitacora] PRIMARY KEY CLUSTERED 
(
	[IdExpedienteDigitalEventoBitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpedienteDigitalGastoComprobado]    Script Date: 07/12/2020 08:43:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpedienteDigitalGastoComprobado](
	[IdGastoComprobado] [int] IDENTITY(1,1) NOT NULL,
	[IdExpedienteDigital] [int] NULL,
	[EmisorNombre] [nvarchar](max) NULL,
	[EmisorRFC] [nvarchar](max) NULL,
	[Folio] [nvarchar](max) NULL,
	[Fecha] [nvarchar](max) NULL,
	[SubTotal] [decimal](18, 2) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[RutaArchivoXMLOrigen] [nvarchar](max) NULL,
	[RutaArchivoXMLDestino] [nvarchar](max) NULL,
	[RutaArchivoPDFOrigen] [nvarchar](max) NULL,
	[RutaArchivoPDFDestino] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ExpedienteDigitalGastoComprobado] PRIMARY KEY CLUSTERED 
(
	[IdGastoComprobado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpedienteDigitalMetaDato]    Script Date: 07/12/2020 08:43:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpedienteDigitalMetaDato](
	[IdExpedienteDigitalMetaDato] [int] IDENTITY(1,1) NOT NULL,
	[IdExpedienteDigital] [int] NOT NULL,
	[IdExpedienteDigitalProcesamientoArchivo] [int] NULL,
	[Nombre] [nvarchar](max) NULL,
	[Valor] [nvarchar](max) NULL,
	[EsHijo] [int] NULL,
	[Nivel] [int] NULL,
 CONSTRAINT [PK_dbo.ExpedienteDigitalMetaDato] PRIMARY KEY CLUSTERED 
(
	[IdExpedienteDigitalMetaDato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpedienteDigitalOrigen]    Script Date: 07/12/2020 08:43:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpedienteDigitalOrigen](
	[IdExpedienteDigitalOrigen] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[RutaRaiz] [nvarchar](max) NULL,
	[Habilitado] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ExpedienteDigitalOrigen] PRIMARY KEY CLUSTERED 
(
	[IdExpedienteDigitalOrigen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpedienteDigitalProcesamiento]    Script Date: 07/12/2020 08:43:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpedienteDigitalProcesamiento](
	[IdExpedienteDigitalProcesamiento] [int] IDENTITY(1,1) NOT NULL,
	[IdExpedienteDigital] [int] NOT NULL,
	[IdExpedienteDigitalConfiguracionArchivo] [int] NULL,
	[HoraFecha] [datetime] NOT NULL,
	[OrigenNomenclatura] [nvarchar](max) NOT NULL,
	[DestinoNomenclatura] [nvarchar](max) NOT NULL,
	[RutaMoverPosProcesamiento] [nvarchar](max) NULL,
	[EliminarDespuesProcesamiento] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ExpedienteDigitalProcesamiento] PRIMARY KEY CLUSTERED 
(
	[IdExpedienteDigitalProcesamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpedienteDigitalProcesamientoArchivo]    Script Date: 07/12/2020 08:43:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpedienteDigitalProcesamientoArchivo](
	[IdExpedienteDigitalProcesamientoArchivo] [int] IDENTITY(1,1) NOT NULL,
	[IdExpedienteDigitalProcesamiento] [int] NOT NULL,
	[ArchivoRutaCompletaOrigen] [nvarchar](max) NOT NULL,
	[ArchivoRutaCompletaDestino] [nvarchar](max) NOT NULL,
	[Requerido] [bit] NOT NULL,
	[Procesado] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ExpedienteDigitalProcesamientoArchivo] PRIMARY KEY CLUSTERED 
(
	[IdExpedienteDigitalProcesamientoArchivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpedienteDigitalProcesamientoArchivoBitacora]    Script Date: 07/12/2020 08:43:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpedienteDigitalProcesamientoArchivoBitacora](
	[IdExpedienteDigitalProcesamientoArchivoBitacora] [int] IDENTITY(1,1) NOT NULL,
	[IdExpedienteDigitalProcesamientoArchivo] [int] NOT NULL,
	[IdExpedienteDigitalEventoBitacora] [int] NOT NULL,
	[Observaciones] [nvarchar](max) NOT NULL,
	[FechaHora] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.ExpedienteDigitalProcesamientoArchivoBitacora] PRIMARY KEY CLUSTERED 
(
	[IdExpedienteDigitalProcesamientoArchivoBitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpedienteDigitalTipoArchivo]    Script Date: 07/12/2020 08:43:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpedienteDigitalTipoArchivo](
	[IdExpedienteDigitalTipoArchivo] [int] IDENTITY(1,1) NOT NULL,
	[IdExpedienteDigitalOrigen] [int] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[NomenclaturaNombreOrigen] [nvarchar](max) NOT NULL,
	[RutaMoverPosProcesamiento] [nvarchar](max) NULL,
	[EliminarDespuesProcesar] [bit] NOT NULL,
	[Habilitado] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ExpedienteDigitalTipoArchivo] PRIMARY KEY CLUSTERED 
(
	[IdExpedienteDigitalTipoArchivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ExpedienteDigitalConfiguracionCliente] ADD  DEFAULT ((0)) FOR [IdExpedienteDigitalConfiguracion]
GO
ALTER TABLE [dbo].[ExpedienteDigitalProcesamientoArchivo] ADD  DEFAULT ((0)) FOR [Procesado]
GO
ALTER TABLE [dbo].[ExpedienteDigitalArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpedienteDigitalArchivo_dbo.ExpedienteDigital_IdExpedienteDigital] FOREIGN KEY([IdExpedienteDigital])
REFERENCES [dbo].[ExpedienteDigital] ([IdExpedienteDigital])
GO
ALTER TABLE [dbo].[ExpedienteDigitalArchivo] CHECK CONSTRAINT [FK_dbo.ExpedienteDigitalArchivo_dbo.ExpedienteDigital_IdExpedienteDigital]
GO
ALTER TABLE [dbo].[ExpedienteDigitalArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpedienteDigitalArchivo_dbo.ExpedienteDigitalProcesamientoArchivo_IdExpedienteDigitalProcesamientoArchivo] FOREIGN KEY([IdExpedienteDigitalProcesamientoArchivo])
REFERENCES [dbo].[ExpedienteDigitalProcesamientoArchivo] ([IdExpedienteDigitalProcesamientoArchivo])
GO
ALTER TABLE [dbo].[ExpedienteDigitalArchivo] CHECK CONSTRAINT [FK_dbo.ExpedienteDigitalArchivo_dbo.ExpedienteDigitalProcesamientoArchivo_IdExpedienteDigitalProcesamientoArchivo]
GO
ALTER TABLE [dbo].[ExpedienteDigitalBitacora]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpedienteDigitalBitacora_dbo.ExpedienteDigital_IdExpedienteDigital] FOREIGN KEY([IdExpedienteDigital])
REFERENCES [dbo].[ExpedienteDigital] ([IdExpedienteDigital])
GO
ALTER TABLE [dbo].[ExpedienteDigitalBitacora] CHECK CONSTRAINT [FK_dbo.ExpedienteDigitalBitacora_dbo.ExpedienteDigital_IdExpedienteDigital]
GO
ALTER TABLE [dbo].[ExpedienteDigitalBitacora]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpedienteDigitalBitacora_dbo.ExpedienteDigitalEventoBitacora_IdExpedienteDigitalEventoBitacora] FOREIGN KEY([IdExpedienteDigitalEventoBitacora])
REFERENCES [dbo].[ExpedienteDigitalEventoBitacora] ([IdExpedienteDigitalEventoBitacora])
GO
ALTER TABLE [dbo].[ExpedienteDigitalBitacora] CHECK CONSTRAINT [FK_dbo.ExpedienteDigitalBitacora_dbo.ExpedienteDigitalEventoBitacora_IdExpedienteDigitalEventoBitacora]
GO
ALTER TABLE [dbo].[ExpedienteDigitalConfiguracionArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpedienteDigitalConfiguracionArchivo_dbo.ExpedienteDigitalConfiguracion_IdExpedienteDigitalConfiguracion] FOREIGN KEY([IdExpedienteDigitalConfiguracion])
REFERENCES [dbo].[ExpedienteDigitalConfiguracion] ([IdExpedienteDigitalConfiguracion])
GO
ALTER TABLE [dbo].[ExpedienteDigitalConfiguracionArchivo] CHECK CONSTRAINT [FK_dbo.ExpedienteDigitalConfiguracionArchivo_dbo.ExpedienteDigitalConfiguracion_IdExpedienteDigitalConfiguracion]
GO
ALTER TABLE [dbo].[ExpedienteDigitalConfiguracionArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpedienteDigitalConfiguracionArchivo_dbo.ExpedienteDigitalTipoArchivo_IdExpedienteDigitalTipoArchivo] FOREIGN KEY([IdExpedienteDigitalTipoArchivo])
REFERENCES [dbo].[ExpedienteDigitalTipoArchivo] ([IdExpedienteDigitalTipoArchivo])
GO
ALTER TABLE [dbo].[ExpedienteDigitalConfiguracionArchivo] CHECK CONSTRAINT [FK_dbo.ExpedienteDigitalConfiguracionArchivo_dbo.ExpedienteDigitalTipoArchivo_IdExpedienteDigitalTipoArchivo]
GO
ALTER TABLE [dbo].[ExpedienteDigitalConfiguracionArchivoCliente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpedienteDigitalConfiguracionArchivoCliente_dbo.ExpedienteDigitalConfiguracionArchivo_IdExpedienteDigitalConfiguracionAr] FOREIGN KEY([IdExpedienteDigitalConfiguracionArchivo])
REFERENCES [dbo].[ExpedienteDigitalConfiguracionArchivo] ([IdExpedienteDigitalConfiguracionArchivo])
GO
ALTER TABLE [dbo].[ExpedienteDigitalConfiguracionArchivoCliente] CHECK CONSTRAINT [FK_dbo.ExpedienteDigitalConfiguracionArchivoCliente_dbo.ExpedienteDigitalConfiguracionArchivo_IdExpedienteDigitalConfiguracionAr]
GO
ALTER TABLE [dbo].[ExpedienteDigitalConfiguracionCliente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpedienteDigitalConfiguracionCliente_dbo.ExpedienteDigitalConfiguracion_IdExpedienteDigitalConfiguracion] FOREIGN KEY([IdExpedienteDigitalConfiguracion])
REFERENCES [dbo].[ExpedienteDigitalConfiguracion] ([IdExpedienteDigitalConfiguracion])
GO
ALTER TABLE [dbo].[ExpedienteDigitalConfiguracionCliente] CHECK CONSTRAINT [FK_dbo.ExpedienteDigitalConfiguracionCliente_dbo.ExpedienteDigitalConfiguracion_IdExpedienteDigitalConfiguracion]
GO
ALTER TABLE [dbo].[ExpedienteDigitalGastoComprobado]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpedienteDigitalGastoComprobado_dbo.ExpedienteDigital_IdExpedienteDigital] FOREIGN KEY([IdExpedienteDigital])
REFERENCES [dbo].[ExpedienteDigital] ([IdExpedienteDigital])
GO
ALTER TABLE [dbo].[ExpedienteDigitalGastoComprobado] CHECK CONSTRAINT [FK_dbo.ExpedienteDigitalGastoComprobado_dbo.ExpedienteDigital_IdExpedienteDigital]
GO
ALTER TABLE [dbo].[ExpedienteDigitalMetaDato]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpedienteDigitalMetaDato_dbo.ExpedienteDigital_IdExpedienteDigital] FOREIGN KEY([IdExpedienteDigital])
REFERENCES [dbo].[ExpedienteDigital] ([IdExpedienteDigital])
GO
ALTER TABLE [dbo].[ExpedienteDigitalMetaDato] CHECK CONSTRAINT [FK_dbo.ExpedienteDigitalMetaDato_dbo.ExpedienteDigital_IdExpedienteDigital]
GO
ALTER TABLE [dbo].[ExpedienteDigitalMetaDato]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpedienteDigitalMetaDato_dbo.ExpedienteDigitalProcesamientoArchivo_IdExpedienteDigitalProcesamientoArchivo] FOREIGN KEY([IdExpedienteDigitalProcesamientoArchivo])
REFERENCES [dbo].[ExpedienteDigitalProcesamientoArchivo] ([IdExpedienteDigitalProcesamientoArchivo])
GO
ALTER TABLE [dbo].[ExpedienteDigitalMetaDato] CHECK CONSTRAINT [FK_dbo.ExpedienteDigitalMetaDato_dbo.ExpedienteDigitalProcesamientoArchivo_IdExpedienteDigitalProcesamientoArchivo]
GO
ALTER TABLE [dbo].[ExpedienteDigitalProcesamiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpedienteDigitalProcesamiento_dbo.ExpedienteDigital_IdExpedienteDigital] FOREIGN KEY([IdExpedienteDigital])
REFERENCES [dbo].[ExpedienteDigital] ([IdExpedienteDigital])
GO
ALTER TABLE [dbo].[ExpedienteDigitalProcesamiento] CHECK CONSTRAINT [FK_dbo.ExpedienteDigitalProcesamiento_dbo.ExpedienteDigital_IdExpedienteDigital]
GO
ALTER TABLE [dbo].[ExpedienteDigitalProcesamiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpedienteDigitalProcesamiento_dbo.ExpedienteDigitalConfiguracionArchivo_IdExpedienteDigitalConfiguracionArchivo] FOREIGN KEY([IdExpedienteDigitalConfiguracionArchivo])
REFERENCES [dbo].[ExpedienteDigitalConfiguracionArchivo] ([IdExpedienteDigitalConfiguracionArchivo])
GO
ALTER TABLE [dbo].[ExpedienteDigitalProcesamiento] CHECK CONSTRAINT [FK_dbo.ExpedienteDigitalProcesamiento_dbo.ExpedienteDigitalConfiguracionArchivo_IdExpedienteDigitalConfiguracionArchivo]
GO
ALTER TABLE [dbo].[ExpedienteDigitalProcesamientoArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpedienteDigitalProcesamientoArchivo_dbo.ExpedienteDigitalProcesamiento_IdExpedienteDigitalProcesamiento] FOREIGN KEY([IdExpedienteDigitalProcesamiento])
REFERENCES [dbo].[ExpedienteDigitalProcesamiento] ([IdExpedienteDigitalProcesamiento])
GO
ALTER TABLE [dbo].[ExpedienteDigitalProcesamientoArchivo] CHECK CONSTRAINT [FK_dbo.ExpedienteDigitalProcesamientoArchivo_dbo.ExpedienteDigitalProcesamiento_IdExpedienteDigitalProcesamiento]
GO
ALTER TABLE [dbo].[ExpedienteDigitalProcesamientoArchivoBitacora]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpedienteDigitalProcesamientoArchivoBitacora_dbo.ExpedienteDigitalEventoBitacora_IdExpedienteDigitalEventoBitacora] FOREIGN KEY([IdExpedienteDigitalEventoBitacora])
REFERENCES [dbo].[ExpedienteDigitalEventoBitacora] ([IdExpedienteDigitalEventoBitacora])
GO
ALTER TABLE [dbo].[ExpedienteDigitalProcesamientoArchivoBitacora] CHECK CONSTRAINT [FK_dbo.ExpedienteDigitalProcesamientoArchivoBitacora_dbo.ExpedienteDigitalEventoBitacora_IdExpedienteDigitalEventoBitacora]
GO
ALTER TABLE [dbo].[ExpedienteDigitalProcesamientoArchivoBitacora]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpedienteDigitalProcesamientoArchivoBitacora_dbo.ExpedienteDigitalProcesamientoArchivo_IdExpedienteDigitalProcesamientoA] FOREIGN KEY([IdExpedienteDigitalProcesamientoArchivo])
REFERENCES [dbo].[ExpedienteDigitalProcesamientoArchivo] ([IdExpedienteDigitalProcesamientoArchivo])
GO
ALTER TABLE [dbo].[ExpedienteDigitalProcesamientoArchivoBitacora] CHECK CONSTRAINT [FK_dbo.ExpedienteDigitalProcesamientoArchivoBitacora_dbo.ExpedienteDigitalProcesamientoArchivo_IdExpedienteDigitalProcesamientoA]
GO
ALTER TABLE [dbo].[ExpedienteDigitalTipoArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpedienteDigitalTipoArchivo_dbo.ExpedienteDigitalOrigen_IdExpedienteDigitalOrigen] FOREIGN KEY([IdExpedienteDigitalOrigen])
REFERENCES [dbo].[ExpedienteDigitalOrigen] ([IdExpedienteDigitalOrigen])
GO
ALTER TABLE [dbo].[ExpedienteDigitalTipoArchivo] CHECK CONSTRAINT [FK_dbo.ExpedienteDigitalTipoArchivo_dbo.ExpedienteDigitalOrigen_IdExpedienteDigitalOrigen]
GO

/****** Object:  UserDefinedFunction [dbo].[fnExpedienteDigitalObtenerNomenclaturaArchivoFinalizado]    Script Date: 07/12/2020 08:45:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnExpedienteDigitalObtenerNomenclaturaArchivoFinalizado]
(
	@IdExpedienteDigitalProcesamiento INT
)
RETURNS VARCHAR(MAX)
AS
BEGIN
	DECLARE @Resultado VARCHAR(MAX)

	SELECT 
		@Resultado = ISNULL(EDCC.NomenclaturaRutaRaizCompletado, EDC.NomenclaturaRutaRaizCompletado) + ISNULL(EDCAC.NomenclauturaNombreFinalizado, EDCA.NomenclauturaNombreFinalizado) 
	FROM ExpedienteDigitalProcesamiento                        EDP
		JOIN ExpedienteDigital                                 ED    ON (EDP.IdExpedienteDigital                      = ED.IdExpedienteDigital)
		JOIN ExpedienteDigitalConfiguracionArchivo             EDCA  ON (EDP.IdExpedienteDigitalConfiguracionArchivo  = EDCA.IdExpedienteDigitalConfiguracionArchivo)
		LEFT JOIN ExpedienteDigitalConfiguracionArchivoCliente EDCAC ON (EDCA.IdExpedienteDigitalConfiguracionArchivo = EDCAC.IdExpedienteDigitalConfiguracionArchivo AND EDCAC.ClaveClienteSysExpert = ED.ClaveClienteSysExpert)
		JOIN ExpedienteDigitalConfiguracion                    EDC   ON (EDCA.IdExpedienteDigitalConfiguracion        = EDC.IdExpedienteDigitalConfiguracion)
		LEFT JOIN ExpedienteDigitalConfiguracionCliente        EDCC  ON (EDC.IdExpedienteDigitalConfiguracion         = EDCC.IdExpedienteDigitalConfiguracion         AND EDCC.ClaveClienteSysExpert  =  ED.ClaveClienteSysExpert)
	WHERE
		EDP.IdExpedienteDigitalProcesamiento = @IdExpedienteDigitalProcesamiento

	RETURN @Resultado
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnSysExpertObtenerIdDODA]    Script Date: 07/12/2020 08:45:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fnSysExpertObtenerIdDODA]
(
	@IdReferencia INT,
	@IdRemesa     INT
)
RETURNS INT
AS
BEGIN
	DECLARE @IdDODA INT	
	SELECT
		@IdDODA = D.idDoda
	FROM SysExpert.dbo.RelacionDocDetalle        RDD 
		JOIN SysExpert.dbo.RelacionDocEncabezado RDE ON (RDD.idRelacion  = RDE.idRelacion)
		JOIN SysExpert.dbo.Doda                  D   ON (RDE.idRelacion  = D.idRelacion)
	WHERE
		(RDD.idReferencia = @IdReferencia) AND
		((RDD.idRemesa    = @IdRemesa) OR @IdRemesa IS NULL)
	
	RETURN @IdDODA
END
GO
/****** Object:  UserDefinedFunction [dbo].[LastIndexOf]    Script Date: 07/12/2020 08:45:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[LastIndexOf](@text NTEXT, @delimiter NTEXT)  
RETURNS INT
AS       
BEGIN  
  IF (@text IS NULL) RETURN NULL;
  IF (@delimiter IS NULL) RETURN NULL;
  DECLARE @Text2 AS NVARCHAR(MAX) = @text;
  DECLARE @Delimiter2 AS NVARCHAR(MAX) = @delimiter;
  DECLARE @Index AS INT = CHARINDEX(REVERSE(@Delimiter2), REVERSE(@Text2));
  IF (@Index < 1) RETURN 0;
  DECLARE @ContentLength AS INT = (LEN('|' + @Text2 + '|') - 2);
  DECLARE @DelimiterLength AS INT = (LEN('|' + @Delimiter2 + '|') - 2);
  DECLARE @Result AS INT = (@ContentLength - @Index - @DelimiterLength + 2);
  RETURN @Result;
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnExpedienteDigitalFinalizadoPendiente]    Script Date: 07/12/2020 08:45:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnExpedienteDigitalFinalizadoPendiente]
(	

)
RETURNS TABLE 
AS
RETURN 
(
	SELECT 
		EDA.IdExpedienteDigitalArchivo,
		EDPA.ArchivoRutaCompletaDestino AS RutaCompletaOrigen,
		EDA.RutaCompletaFinalizado      AS RutaCompletaDestino
	FROM ExpedienteDigitalProcesamientoArchivo EDPA
		JOIN ExpedienteDigitalArchivo          EDA  ON (EDPA.IdExpedienteDigitalProcesamientoArchivo = EDA.IdExpedienteDigitalProcesamientoArchivo)
	WHERE
		EDPA.Procesado = 1 AND
		EDA.Finalizado IS NULL
)
GO
/****** Object:  UserDefinedFunction [dbo].[fnExpedienteDigitalProcesamientoPendiente]    Script Date: 07/12/2020 08:45:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnExpedienteDigitalProcesamientoPendiente]
(	
	
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT 
		EDP.IdExpedienteDigitalProcesamiento,
		EDP.IdExpedienteDigital,
		EDP.OrigenNomenclatura,
		EDP.DestinoNomenclatura,
		EDCA.IdExpedienteDigitalTipoArchivo

	FROM ExpedienteDigitalProcesamiento                 EDP
		JOIN ExpedienteDigitalConfiguracionArchivo      EDCA ON (EDP.IdExpedienteDigitalConfiguracionArchivo = EDCA.IdExpedienteDigitalConfiguracionArchivo)
		LEFT JOIN ExpedienteDigitalProcesamientoArchivo EDPA ON (EDP.IdExpedienteDigitalProcesamiento        = EDPA.IdExpedienteDigitalProcesamiento)
	WHERE
		EDPA.IdExpedienteDigitalProcesamientoArchivo IS NULL
)
GO
/****** Object:  View [dbo].[vwExpedienteDigtialProcesamientoArchivoBitacoraPendientes]    Script Date: 07/12/2020 08:45:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[vwExpedienteDigtialProcesamientoArchivoBitacoraPendientes]
AS
	SELECT 
		EDMDR.Valor                         AS NumeroReferencia,
		CONVERT(DATETIME, EDMDF.Valor, 101) AS FechaPago,
		EDMDC.Valor                         AS ClaveCliente,
		EDTA.IdExpedienteDigitalTipoArchivo AS IdTipoArchivo,
		EDTA.Nombre                         AS TipoArchivo,
		(
			SELECT TOP 1 
				EDEB.Nombre
			 FROM ExpedienteDigitalProcesamientoArchivoBitacora EDPAB 
				JOIN ExpedienteDigitalEventoBitacora            EDEB  ON (EDPAB.IdExpedienteDigitalEventoBitacora = EDEB.IdExpedienteDigitalEventoBitacora) 
			 WHERE 
				EDPAB.IdExpedienteDigitalProcesamientoArchivo = EDPA.IdExpedienteDigitalProcesamientoArchivo 
			 ORDER BY 
				FechaHora DESC
		) AS Evento,
		(SELECT TOP 1 FechaHora     FROM ExpedienteDigitalProcesamientoArchivoBitacora WHERE IdExpedienteDigitalProcesamientoArchivo = EDPA.IdExpedienteDigitalProcesamientoArchivo ORDER BY FechaHora DESC) AS FechaHora,
		(SELECT TOP 1 Observaciones FROM ExpedienteDigitalProcesamientoArchivoBitacora WHERE IdExpedienteDigitalProcesamientoArchivo = EDPA.IdExpedienteDigitalProcesamientoArchivo ORDER BY FechaHora DESC) AS RutaOrigen
	FROM ExpedienteDigitalProcesamientoArchivo         EDPA  
		JOIN ExpedienteDigitalProcesamiento            EDP   ON (EDPA.IdExpedienteDigitalProcesamiento         = EDP.IdExpedienteDigitalProcesamiento)
		JOIN ExpedienteDigital                         ED    ON (EDP.IdExpedienteDigital                       = ED.IdExpedienteDigital)
		JOIN ExpedienteDigitalConfiguracionArchivo     EDCA  ON (EDP.IdExpedienteDigitalConfiguracionArchivo   = EDCA.IdExpedienteDigitalConfiguracionArchivo)
		JOIN ExpedienteDigitalTipoArchivo              EDTA  ON (EDCA.IdExpedienteDigitalTipoArchivo           = EDTA.IdExpedienteDigitalTipoArchivo )
		JOIN ExpedienteDigitalMetaDato                 EDMDR ON (EDP.IdExpedienteDigital                       = EDMDR.IdExpedienteDigital AND EDMDR.Nombre = '{PedNumeroReferencia}')
		JOIN ExpedienteDigitalMetaDato                 EDMDC ON (EDP.IdExpedienteDigital                       = EDMDC.IdExpedienteDigital AND EDMDC.Nombre = '{PedClienteClave}')
		JOIN ExpedienteDigitalMetaDato                 EDMDF ON ((EDP.IdExpedienteDigital                      = EDMDF.IdExpedienteDigital AND EDMDF.Nombre = '{PedFechaPago}'))
	WHERE
		EDPA.Procesado = 0 AND 
		EDPA.Requerido = 1
GO
/****** Object:  StoredProcedure [dbo].[spExpedienteDigitalEliminaClienteSysExpert]    Script Date: 07/12/2020 08:45:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spExpedienteDigitalEliminaClienteSysExpert]
	@ClaveCliente INT
AS
BEGIN
	DECLARE @ExpedienteDigial TABLE (IdExpedienteDigital INT)

	INSERT INTO @ExpedienteDigial

	SELECT 
		IdExpedienteDigital
	FROM ExpedienteDigital WHERE ClaveClienteSysExpert = @ClaveCliente


	DELETE ExpedienteDigitalBitacora WHERE IdExpedienteDigital IN (SELECT * FROM @ExpedienteDigial)
	DELETE ExpedienteDigitalMetaDato WHERE IdExpedienteDigital IN (SELECT * FROM @ExpedienteDigial)

	DELETE ExpedienteDigitalProcesamientoArchivoBitacora
	FROM @ExpedienteDigial                                 ED
		JOIN ExpedienteDigitalProcesamiento                EDP  ON (ED.IdExpedienteDigital = EDP.IdExpedienteDigital)
		JOIN ExpedienteDigitalProcesamientoArchivo         EDPA ON (EDP.IdExpedienteDigitalProcesamiento = EDPA.IdExpedienteDigitalProcesamientoArchivo)
		JOIN ExpedienteDigitalProcesamientoArchivoBitacora EDPAB ON (EDPA.IdExpedienteDigitalProcesamientoArchivo = EDPAB.IdExpedienteDigitalProcesamientoArchivo)
	WHERE
		IdExpedienteDigitalProcesamientoArchivoBitacora = EDPAB.IdExpedienteDigitalProcesamientoArchivoBitacora

	
	--WHERE
	--	IdExpedienteDigitalProcesamientoArchivo = EDPA.IdExpedienteDigitalProcesamientoArchivo
	
	DELETE ExpedienteDigitalArchivo
	WHERE 
		IdExpedienteDigitalProcesamientoArchivo IN
	
	(
		SELECT
			IdExpedienteDigitalProcesamientoArchivo
		FROM @ExpedienteDigial                             ED
		JOIN ExpedienteDigitalProcesamiento                EDP  ON (ED.IdExpedienteDigital = EDP.IdExpedienteDigital)
		JOIN ExpedienteDigitalProcesamientoArchivo         EDPA ON (EDP.IdExpedienteDigitalProcesamiento = EDPA.IdExpedienteDigitalProcesamiento)
	)

	DELETE ExpedienteDigitalProcesamientoArchivoBitacora
	WHERE
		IdExpedienteDigitalProcesamientoArchivo IN
	(
		SELECT
			IdExpedienteDigitalProcesamientoArchivo
		FROM @ExpedienteDigial                             ED
		JOIN ExpedienteDigitalProcesamiento                EDP  ON (ED.IdExpedienteDigital = EDP.IdExpedienteDigital)
		JOIN ExpedienteDigitalProcesamientoArchivo         EDPA ON (EDP.IdExpedienteDigitalProcesamiento = EDPA.IdExpedienteDigitalProcesamiento)	
	)



	DELETE ExpedienteDigitalProcesamientoArchivo
	FROM @ExpedienteDigial                                 ED
		JOIN ExpedienteDigitalProcesamiento                EDP  ON (ED.IdExpedienteDigital = EDP.IdExpedienteDigital)
		JOIN ExpedienteDigitalProcesamientoArchivo         EDPA ON (EDP.IdExpedienteDigitalProcesamiento = EDPA.IdExpedienteDigitalProcesamiento)
	
	WHERE
		IdExpedienteDigitalProcesamientoArchivo = EDPA.IdExpedienteDigitalProcesamientoArchivo

	DELETE ExpedienteDigitalProcesamiento
	FROM @ExpedienteDigial                                 ED
		JOIN ExpedienteDigitalProcesamiento                EDP  ON (ED.IdExpedienteDigital = EDP.IdExpedienteDigital)
	WHERE
		IdExpedienteDigitalProcesamiento = EDP.IdExpedienteDigitalProcesamiento

	DELETE ExpedienteDigital

	WHERE
		IdExpedienteDigital IN(SELECT * FROM @ExpedienteDigial)
END
GO
/****** Object:  StoredProcedure [dbo].[spExpedienteDigitalImportaFacturasYMetadatos]    Script Date: 07/12/2020 08:45:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spExpedienteDigitalImportaFacturasYMetadatos]
AS
BEGIN
	DECLARE @Referencias TABLE(idReferencia INT, idExpedienteDigital INT, NumeroReferencia VARCHAR(20), FechaPago DATETIME)
	INSERT INTO @Referencias
		SELECT 
			ED.IdReferenciaSysExpert,
			ED.IdExpedienteDigital,
			MDNR.Valor,
			CONVERT(datetime, MDFP.Valor, 101) 
		FROM ExpedienteDigital             ED
			JOIN ExpedienteDigitalMetaDato MDNR ON (ED.IdExpedienteDigital = MDNR.IdExpedienteDigital AND MDNR.Nombre ='{PedNumeroReferencia}')
			JOIN ExpedienteDigitalMetaDato MDFP ON (ED.IdExpedienteDigital = MDFP.IdExpedienteDigital AND MDFP.Nombre ='{PedFechaPago}')
	
	DECLARE @ReferenciasRecientes TABLE(Id INT IDENTITY(1, 1), idReferencia INT, idExpedienteDigital INT, NumeroReferencia VARCHAR(20), FechaPago DATETIME)
	INSERT INTO @ReferenciasRecientes
		SELECT * FROM @Referencias --WHERE FechaPago >= (GETDATE() - 15)

	
	--GastosComprobados	
	DECLARE @GastosComprobados TABLE
	(
		IdRef                      INT,
		IdExpedienteDigital        INT,
		GastoComprobadoFolio       VARCHAR(MAX),
		GastoComprobadoDescripcion VARCHAR(MAX) 
	)	
	INSERT INTO @GastosComprobados
		SELECT
			RR.idReferencia,
			RR.idExpedienteDigital,
			GC.Folio,
			GC.DescGasto
		FROM @ReferenciasRecientes                        RR
			LEFT JOIN SysExpert.dbo.Ped_GastosComprobados GC  ON (RR.idReferencia = GC.idReferenciaGasto)
			LEFT JOIN ExpedienteDigitalMetaDato           MDG ON (RR.idExpedienteDigital = MDG.IdExpedienteDigital AND GC.Folio COLLATE Modern_Spanish_CI_AS = MDG.Valor COLLATE Modern_Spanish_CI_AS AND MDG.Nombre = '{GastoComprobadoFolio}')
		WHERE
			MDG.IdExpedienteDigitalMetaDato IS NULL 
			AND GC.idGastoComprobado IS NOT NULL


	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT 
			GC.IdExpedienteDigital,
			NULL,
			'{GastoComprobadoFolio}',
			GC.GastoComprobadoFolio,
			NULL,
			NULL
		FROM @GastosComprobados GC

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT 
			GC.IdExpedienteDigital,
			NULL,
			'{GastoComprobadoDescripcion}',
			GC.GastoComprobadoDescripcion,
			EDMD.IdExpedienteDigitalMetaDato,
			NULL
		FROM @GastosComprobados                            GC
			JOIN ExpedienteDigitalMetaDato EDMD ON (GC.GastoComprobadoFolio = EDMD.Valor AND GC.IdExpedienteDigital = EDMD.IdExpedienteDigital)
	
	--CuentaGasto/CFDI
	DECLARE @Facturacion TABLE
	(
		IdRef               INT,
		IdExpedienteDigital INT,
		ClaveCuenta         INT,
		Anio                VARCHAR(MAX),
		Mes                 VARCHAR(MAX),
		Serie               VARCHAR(MAX),
		Folio               VARCHAR(MAX)
	)
	INSERT INTO @Facturacion
		SELECT 				
			RR.idReferencia,
			RR.idExpedienteDigital,
			CEH.ClaveCuenta,		
			CASE
				WHEN FEH.Serie = '' THEN
					RIGHT(CONVERT(VARCHAR(10), FEM.FacturaFecha,101), 4)				
				ELSE
					RIGHT(CONVERT(VARCHAR(10), FEH.FacturaFecha,101), 4)				
			END AS Anio,		
			CASE
				WHEN FEH.Serie = '' THEN
					LEFT(CONVERT(VARCHAR(10),  FEH.FacturaFecha,101), 2)
				ELSE
					LEFT(CONVERT(VARCHAR(10),  FEH.FacturaFecha,101), 2)				
			END AS Mes,			
			CASE
				WHEN FEH.Serie = '' THEN				
					FEM.Serie
				ELSE				
					FEH.Serie
			END AS Serie,
			CASE
				WHEN FEH.Serie = '' THEN				
					FEM.FacturaNumero
				ELSE				
					FEH.FacturaNumero
			END AS Folio		
		FROM @ReferenciasRecientes                 RR       	
			LEFT JOIN FXpert.dbo.CuentaEncabezado  CEH ON (RR.idReferencia      = CEH.IdReferenciaOrigenDatos)
			LEFT JOIN FXPERT.dbo.FacturaEncabezado FEH ON (CEH.ClaveCuenta      = FEH.ClaveCuenta)
			LEFT JOIN FXpert.dbo.CuentaDetalle     CDM ON (CEH.IdDetalleMaestra = CDM.IdCuentaDetalle)
			LEFT JOIN Fxpert.dbo.FacturaEncabezado FEM ON (CDM.ClaveCuenta      = FEM.ClaveCuenta)
		WHERE
			CEH.IdCuentaEncabezado IS NOT NULL

	--Eliminacion de CFD/CG ya procesadas
	DELETE @Facturacion WHERE IdExpedienteDigital IN
	(
		SELECT
			F.IdExpedienteDigital
		FROM @Facturacion                  F
			JOIN ExpedienteDigitalMetaDato MDCG ON (F.IdExpedienteDigital = MDCG.IdExpedienteDigital AND F.Folio COLLATE Modern_Spanish_CI_AS = MDCG.Valor COLLATE Modern_Spanish_CI_AS AND MDCG.Nombre = '{CuentaGastoFolio}')
		WHERE
			F.Serie = 'CG'	
	)

	DELETE @Facturacion WHERE IdExpedienteDigital IN
	(
		SELECT
			F.IdExpedienteDigital
		FROM @Facturacion                  F
			JOIN ExpedienteDigitalMetaDato MDCG ON (F.IdExpedienteDigital = MDCG.IdExpedienteDigital AND F.Folio COLLATE Modern_Spanish_CI_AS = MDCG.Valor COLLATE Modern_Spanish_CI_AS AND MDCG.Nombre = '{CFDFolio}')
		WHERE
			F.Serie = 'AAA'
	)
		
	--CUENTAS DE GASTO(CG)		
	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT 
			F.IdExpedienteDigital,
			NULL,
			'{CuentaGastoFolio}',
			F.Folio,
			NULL,
			1
		FROM @Facturacion F	
		WHERE
			F.Serie = 'CG'
		
		INSERT INTO ExpedienteDigitalMetaDato 
			SELECT 
				F.IdExpedienteDigital,
				NULL,
				'{CuentaGastoSerie}',
				F.Serie,
				EDMD.IdExpedienteDigitalMetaDato,
				1
			FROM @Facturacion                  F
				JOIN ExpedienteDigitalMetaDato EDMD ON (F.Folio = EDMD.Valor AND F.IdExpedienteDigital = EDMD.IdExpedienteDigital)
			WHERE
				F.Serie = 'CG'

		INSERT INTO ExpedienteDigitalMetaDato 
			SELECT 
				F.IdExpedienteDigital,
				NULL,
				'{CuentaGastoAnio}',
				F.Anio,
				EDMD.IdExpedienteDigitalMetaDato,
				1
			FROM @Facturacion                                  F
				JOIN ExpedienteDigitalMetaDato EDMD ON (F.Folio = EDMD.Valor AND F.IdExpedienteDigital = EDMD.IdExpedienteDigital)
			WHERE
				F.Serie = 'CG'

		INSERT INTO ExpedienteDigitalMetaDato 
			SELECT 
				F.IdExpedienteDigital,
				NULL,
				'{CuentaGastoMes}',
				F.Mes,
				EDMD.IdExpedienteDigitalMetaDato,
				1
			FROM @Facturacion                                  F
				JOIN ExpedienteDigitalMetaDato EDMD ON (F.Folio = EDMD.Valor AND F.IdExpedienteDigital = EDMD.IdExpedienteDigital)	
			WHERE
				F.Serie = 'CG'
	--CFDI(AAA)
	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT 
			F.IdExpedienteDigital,
			NULL,
			'{CFDFolio}',
			F.Folio,
			NULL,
			1
		FROM @Facturacion F	
		WHERE
			F.Serie= 'AAA'
		
	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT 
			F.IdExpedienteDigital,
			NULL,
			'{CFDSerie}',
			F.Serie,
			EDMD.IdExpedienteDigitalMetaDato,
			1
		FROM @Facturacion                  F
			JOIN ExpedienteDigitalMetaDato EDMD ON (F.Folio = EDMD.Valor AND F.IdExpedienteDigital = EDMD.IdExpedienteDigital)
		WHERE
			F.Serie= 'AAA'

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT 
			F.IdExpedienteDigital,
			NULL,
			'{CFDAnio}',
			F.Anio,
			EDMD.IdExpedienteDigitalMetaDato,
			1
		FROM @Facturacion                  F
			JOIN ExpedienteDigitalMetaDato EDMD ON (F.Folio = EDMD.Valor AND F.IdExpedienteDigital = EDMD.IdExpedienteDigital)
		WHERE
			F.Serie= 'AAA'

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT 
			F.IdExpedienteDigital,
			NULL,
			'{CFDMes}',
			F.Mes,
			EDMD.IdExpedienteDigitalMetaDato,
			1
		FROM @Facturacion                  F
			JOIN ExpedienteDigitalMetaDato EDMD ON (F.Folio = EDMD.Valor AND F.IdExpedienteDigital = EDMD.IdExpedienteDigital)
		WHERE
			F.Serie= 'AAA'
END
GO
/****** Object:  StoredProcedure [dbo].[spExpedienteDigitalImportaPedimentosYMetadatos]    Script Date: 07/12/2020 08:45:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spExpedienteDigitalImportaPedimentosYMetadatos]
AS
BEGIN
	DECLARE @NuevosPedimentos TABLE
	(
		IdReferencia     INT,
		IdAgencia        INT,
		ClaveCliente     INT
	)

	/* CONSTANTES */
    DECLARE @PedNumeroReferencia              VARCHAR(MAX) = '{PedNumeroReferencia}'
    DECLARE @PedNumeroPedimento               VARCHAR(MAX) = '{PedNumeroPedimento}'
    DECLARE @PedTipOperacionClave             VARCHAR(MAX) = '{PedTipOperacionClave}'
    DECLARE @PedClaveDocumento                VARCHAR(MAX) = '{PedClaveDocumento}'
	DECLARE @PedRegimen                       VARCHAR(MAX) = '{PedRegimen}'
    DECLARE @PedAduanaClave                   VARCHAR(MAX) = '{PedAduanaClave}'
    DECLARE @PedAduanaSeccion                 VARCHAR(MAX) = '{PedAduanaSeccion}'
	DECLARE @PedArchivoValidacionEnvio        VARCHAR(MAX) = '{PedArchivoValidacionEnvio}'
	DECLARE @PedArchivoValidacionRespuesta    VARCHAR(MAX) = '{PedArchivoValidacionRespuesta}' 
	DECLARE @PedArchivoBancEnvio              VARCHAR(MAX) = '{PedArchivoBancEnvio}'
	DECLARE @PedArchivoBancoRespuesta         VARCHAR(MAX) = '{PedArchivoBancoRespuesta}'
    DECLARE @PedPatente                       VARCHAR(MAX) = '{PedPatente}'
    DECLARE @PedClienteClave                  VARCHAR(MAX) = '{PedClienteClave}'
    DECLARE @PedClienteRFC                    VARCHAR(MAX) = '{PedClienteRFC}'
    DECLARE @PedClienteRazonSocial            VARCHAR(MAX) = '{PedClienteRazonSocial}'
    DECLARE @PedFechaPago                     VARCHAR(MAX) = '{PedFechaPago}'
    DECLARE @PedAnio                          VARCHAR(MAX) = '{PedAnio}'
    DECLARE @PedAnioCorto                     VARCHAR(MAX) = '{PedAnioCorto}'
    DECLARE @PedMes                           VARCHAR(MAX) = '{PedMes}'
    DECLARE @PedCOVENumeroEDocument           VARCHAR(MAX) = '{PedCOVENumeroEDocument}'
    DECLARE @PedDODANumeroFolio               VARCHAR(MAX) = '{PedDODANumeroFolio}'
	DECLARE @PedDODAIdDODA                    VARCHAR(MAX) = '{PedDODAIdDODA}'
    DECLARE @PedDigitalizacionNumeroEDocument VARCHAR(MAX) = '{PedDigitalizacionNumeroEDocument}'
	DECLARE @PedDigitalizacionArchivo         VARCHAR(MAX) = '{PedDigitalizacionArchivo}'
    DECLARE @PedDigitalizacionDocumento       VARCHAR(MAX) = '{PedDigitalizacionDocumento}'
    DECLARE @PedCantidadProveedores           VARCHAR(MAX) = '{PedCantidadProveedores}'
    DECLARE @RemNumeroRemesa                  VARCHAR(MAX) = '{RemNumeroRemesa}'
	DECLARE @RemNumeroRemesaCuatroDigitos     VARCHAR(MAX) = '{RemNumeroRemesaCuatroDigitos}'
    DECLARE @RemDODANumeroFolio               VARCHAR(MAX) = '{RemDODANumeroFolio}'
	DECLARE @RemDODAIdDODA                    VARCHAR(MAX) = '{RemDODAIdDODA}'
    DECLARE @CFDFolio                         VARCHAR(MAX) = '{CFDFolio}'
    DECLARE @CFDSerie                         VARCHAR(MAX) = '{CFDSerie}'
    DECLARE @CFDAnio                          VARCHAR(MAX) = '{CFDAnio}'
    DECLARE @CFDMes                           VARCHAR(MAX) = '{CFDMes}'
    DECLARE @CuentaGastoSerie                 VARCHAR(MAX) = '{CuentaGastoSerie}'
    DECLARE @CuetaGastoFolio                  VARCHAR(MAX) = '{CuentaGastoFolio}'
    DECLARE @CuentaGastoAnio                  VARCHAR(MAX) = '{CuentaGastoAnio}'
    DECLARE @CuentaGastoMes                   VARCHAR(MAX) = '{CuentaGastoMes}'
    DECLARE @GastoComprobadoFolio             VARCHAR(MAX) = '{GastoComprobadoFolio}'
    DECLARE @GastoComprobadoDescripcion       VARCHAR(MAX) = '{GastoComprobadoDescripcion}'
	/*FIN CONSTANTES*/

	INSERT INTO @NuevosPedimentos
		SELECT
			PG.idReferencia,
			PG.idAgencia,
			C.ClaveCliente
		FROM SysExpert.dbo.Ped_Grales                           PG
			LEFT JOIN ExpedienteDigital                         ED  ON (PG.idReferencia = ED.IdReferenciaSysExpert)
			LEFT JOIN SysExpert.dbo.Ped_Fechas                  PFP ON (PG.idReferencia = PFP.idReferencia AND PFP.idFecha = 2)
			LEFT JOIN SysExpert.dbo.Clientes                    C   ON (PG.idCliente    = C.idCliente)
			LEFT JOIN SYSEXPERT.dbo.BitacoraCreacionExpedientes BCE ON (PG.idReferencia = BCE.idReferencia)
 		WHERE
			ED.IdReferenciaSysExpert IS NULL AND
			PFP.Fecha >=  '20200801'         AND
			--PFP.Fecha BETWEEN '20200801' AND '20200805' AND
			PG.Acuse  <>  ''                                      AND 
			PG.Bacuse <> ''                                       AND  
			BCE.RutaArchivos <> ''                                AND
			(
				C.ClaveCliente = 1401 OR                                 --SANDVIK MINING
				C.ClaveCliente IN (1462, 2383, 2384, 2184, 2277, 2426)   --GRUPO PRASAD
			)			
	INSERT INTO ExpedienteDigital
		SELECT
			IdReferencia,
			IdAgencia,
			0,
			0,
			0,
			ClaveCliente
		FROM @NuevosPedimentos

	INSERT INTO ExpedienteDigitalBitacora
		SELECT
			ED.IdExpedienteDigital,
			1, --NUEVO EXPEDIENTE PEDIMENTO
			GETDATE(),
			NULL
		FROM @NuevosPedimentos                      NP
			JOIN ExpedienteDigital  ED  ON (NP.IdReferencia = ED.IdReferenciaSysExpert)

		DECLARE @Pedimento TABLE
		(
			IdRef                         INT,
			IdExpedienteDigital           INT,
			NumeroReferencia              VARCHAR(MAX),
			NumeroPedimento               VARCHAR(MAX),
			TipoOperacionClave            VARCHAR(MAX),
			ClaveDocumento                VARCHAR(MAX),
			Regimen                       VARCHAR(MAX),
			AduanaClave                   VARCHAR(MAX),
			AduanaSeccion                 VARCHAR(MAX),
			ArchivoValidacionEnvio        VARCHAR(MAX),
			ArchivoValidacionRespuesta    VARCHAR(MAX),
			ArchivoBancEnvio              VARCHAR(MAX),
			ArchivoBancoRespuesta         VARCHAR(MAX),
			Patente                       VARCHAR(MAX),
			--ClienteClave        VARCHAR(MAX),
			ClienteClave                  INT,
			ClienteRFC                    VARCHAR(MAX),
			CLienteRazonSocial            VARCHAR(MAX),
			FechaPago                     VARCHAR(MAX),
			Anio                          VARCHAR(MAX),
			AnioCorto                     VARCHAR(MAX),
			Mes                           VARCHAR(MAX),
			DODAFolio                     VARCHAR(MAX),
			DODAId                        VARCHAR(MAX),
			CantidadProveedores           INT
		)

		INSERT INTO @Pedimento
			SELECT
				NP.IdReferencia,
				ED.IdExpedienteDigital,
				PG.NumeroReferencia,
				RIGHT(PG.NumeroPedimento, 7),
				CAST(PG.idTipoOperacion AS VARCHAR(MAX)),
				CD.Clave,
				R.rg_Clave,
				LEFT(AD.ClaveAduana, 2),
				RIGHT(AD.ClaveAduana, 1),
				PG.ArchivoValidacion,
				LEFT(PG.ArchivoValidacion, 8) + '.err',
				PG.BArchivoValidacion,
				'a' +RIGHT(PG.BArchivoValidacion, 11),
				LEFT(PG.NumeroPedimento, 4),
				C.ClaveCliente,
				C.RFC,
				C.RazonSocial,
				CONVERT(VARCHAR(10), PFP.Fecha, 101),
				RIGHT(CONVERT(VARCHAR(10), PFP.Fecha, 101), 4),
				RIGHT(CONVERT(VARCHAR(10), PFP.Fecha, 101), 2),
				LEFT(CONVERT(VARCHAR(10),  PFP.Fecha, 101), 2),
				D.NumeroIntegracion,
				D.idDoda,
				NULL
			FROM @NuevosPedimentos                            NP
				JOIN SysExpert.dbo.Ped_Grales                 PG  ON (NP.IdReferencia     = PG.IdReferencia)
				JOIN ExpedienteDigital                        ED  ON (NP.IdReferencia     = ED.IdReferenciaSysExpert)
				JOIN SysExpert.dbo.CvesDocs                   CD  ON (PG.idClave          = CD.idClave)
				JOIN SysExpert.dbo.Regimenes                  R   ON (CD.IdGrupo          = R.idGrupo)
				JOIN SysExpert.dbo.Aduanas                    AD  ON (PG.idAduanaDespacho = AD.idAduana)
				JOIN SysExpert.dbo.Clientes                   C   ON (PG.idCliente        = C.idCliente)
				JOIN SysExpert.dbo.Ped_Fechas                 PFP ON (PFP.idReferencia    = NP.IdReferencia AND PFP.idFecha = 2)
				LEFT JOIN SysExpert.dbo.RelacionDocDetalle    RDD ON (NP.IdReferencia     = RDD.idReferencia AND PG.ContadorRemesas = 0)
				LEFT JOIN SysExpert.dbo.RelacionDocEncabezado RDE ON (RDD.idRelacion      = RDE.idRelacion)
				LEFT JOIN SysExpert.dbo.Doda                  D   ON (RDE.idRelacion      = D.idRelacion)
	
	
	DECLARE @Proveedores TABLE(IdProveedor INT, IdReferencia INT)
	INSERT INTO @Proveedores
		SELECT DISTINCT
			P.idProveedor,
			PD.IdRef
		FROM @Pedimento PD
			JOIN SysExpert.dbo.AsignacionFacturas AF ON (PD.IdRef       = AF.idReferencia)
			JOIN SysExpert.dbo.Ped_Facturas       PF ON (AF.idFactura   = PF.idFactura) 
			JOIN SysExpert.dbo.Proveedores        P  ON (PF.idProveedor = P.idProveedor)


	UPDATE @Pedimento
		SET CantidadProveedores =
			(
				SELECT
					COUNT(IdProveedor)
				FROM @Proveedores P
				WHERE
					P.IdReferencia = IdRef
			)
	FROM @Pedimento MP
	WHERE
		IdRef = MP.IdRef
	

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedNumeroReferencia,
			P.NumeroReferencia,
			NULL,
			1
			
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedNumeroPedimento,
			P.NumeroPedimento,
			NULL,
			1
		FROM @Pedimento P
		
	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedTipOperacionClave,
			P.TipoOperacionClave,
			NULL,
			1
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedClaveDocumento,
			P.ClaveDocumento,
			NULL,
			1
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedRegimen,
			P.Regimen,
			NULL,
			1
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedAduanaClave,
			P.AduanaClave,
			NULL,
			1
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedAduanaSeccion,
			P.AduanaSeccion,
			NULL,
			1
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedArchivoValidacionEnvio,
			P.ArchivoValidacionEnvio,
			NULL,
			1
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedArchivoValidacionRespuesta,
			P.ArchivoValidacionRespuesta,
			NULL,
			1
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedArchivoBancEnvio,
			P.ArchivoBancEnvio,
			NULL,
			1
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedArchivoBancoRespuesta,
			P.ArchivoBancoRespuesta,
			NULL,
			1
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedPatente,
			P.Patente,
			NULL,
			1
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedClienteClave,
			P.ClienteClave,
			NULL,
			1
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedClienteRFC,
			P.ClienteRFC,
			NULL,
			1
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedClienteRazonSocial,
			P.CLienteRazonSocial,
			NULL,
			1
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedFechaPago,
			P.FechaPago,
			NULL,
			1
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedAnio,
			P.Anio,
			NULL,
			1
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedAnioCorto,
			P.AnioCorto,
			NULL,
			1
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedMes,
			P.Mes,
			NULL,
			1
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedDODANumeroFolio,
			CAST(P.DODAFolio AS VARCHAR(MAX)),
			NULL,
			1
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT
			P.IdExpedienteDigital,
			NULL,
			@PedDODAIdDODA,
			CAST(P.DODAId AS VARCHAR(MAX)),
			NULL,
			1
		FROM @Pedimento P

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT 
			IdExpedienteDigital,
			NULL,
			@PedCantidadProveedores,
			CantidadProveedores,
			NULL,
			1
		FROM @Pedimento

	DECLARE @PedimentoCOVES TABLE
	(
		IdRef               INT,
		IdExpedienteDigital INT,
		EDocument           VARCHAR(MAX)		
	)

	INSERT INTO @PedimentoCOVES
		SELECT
			NP.IdReferencia,
			ED.IdExpedienteDigital,
			CG.eDocument
		FROM @NuevosPedimentos NP
			JOIN ExpedienteDigital                 ED ON (NP.IdReferencia = ED.IdReferenciaSysExpert)		
			JOIN SysExpert.dbo.COVEGeneral         CG ON (NP.IdReferencia = CG.idReferencia)
	
	INSERT INTO ExpedienteDigitalMetaDato
		SELECT
			PC.IdExpedienteDigital,
			NULL,
			@PedCOVENumeroEDocument,
			PC.EDocument,
			NULL,
			NULL
		FROM @PedimentoCOVES PC

	DECLARE @PedimentosDigitalizaciones TABLE
	(
		IdRef               INT,
		IdExpedienteDigital INT,
		Archivo             VARCHAR(MAX),
		Documento           VARCHAR(MAX),
		EDocument           VARCHAR(MAX)	
	)

	INSERT INTO @PedimentosDigitalizaciones
		SELECT
			NP.IdReferencia,
			ED.IdExpedienteDigital,
			SUBSTRING(PD.VUArchivo, dbo.LastIndexOf(PD.VUArchivo, '\') + 1, dbo.LastIndexOf(PD.VUArchivo, '.') - dbo.LastIndexOf(PD.VUArchivo, '\') - 1),
			PD.Documento,
			PD.eDocument
		FROM @NuevosPedimentos                     NP
			JOIN ExpedienteDigital ED ON (NP.IdReferencia = ED.IdReferenciaSysExpert)		
			JOIN SysExpert.dbo.Ped_Digitalizacion  PD ON (NP.IdReferencia = PD.idReferencia)


	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT 
			PD.IdExpedienteDigital,
			NULL,
			@PedDigitalizacionNumeroEDocument,
			PD.EDocument,
			NULL,
			NULL
		FROM @PedimentosDigitalizaciones PD

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT 
			PD.IdExpedienteDigital,
			NULL,
			@PedDigitalizacionArchivo,
			PD.Archivo,
			EDMD.IdExpedienteDigitalMetaDato,
			NULL			
		FROM @PedimentosDigitalizaciones                   PD
			JOIN ExpedienteDigitalMetaDato EDMD ON (PD.EDocument = EDMD.Valor AND PD.IdExpedienteDigital = EDMD.IdExpedienteDigital)

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT 
			PD.IdExpedienteDigital,
			NULL,
			@PedDigitalizacionDocumento,
			PD.Documento,
			EDMD.IdExpedienteDigitalMetaDato,
			NULL			
		FROM @PedimentosDigitalizaciones                   PD
			JOIN ExpedienteDigitalMetaDato EDMD ON (PD.EDocument = EDMD.Valor AND PD.IdExpedienteDigital = EDMD.IdExpedienteDigital)
		
	DECLARE @AvisosConsolidados TABLE
	(
		IdRef                     INT,
		IdExpedienteDigital       INT,
		RemesaNumero              VARCHAR(3),
		RemesaNumeroCuatroDigitos VARCHAR(4),
		DODAFolio                 VARCHAR(MAX),
		DODAId                    VARCHAR(MAX)
	)
	
	INSERT INTO @AvisosConsolidados
		SELECT
			NP.IdReferencia,
			ED.IdExpedienteDigital,
			CAST(PR.NumeroRemesa AS VARCHAR(3)),
			RIGHT(REPLICATE('0', 4) + LTRIM(PR.NumeroRemesa), 4),
			CAST(D.Control       AS VARCHAR(MAX)),
			CAST(D.idDoda        AS VARCHAR(MAX))
		FROM @NuevosPedimentos NP
			JOIN ExpedienteDigital     ED  ON (NP.IdReferencia = ED.IdReferenciaSysExpert)
			JOIN SysExpert.dbo.Ped_Grales              PG  ON (NP.IdReferencia = PG.idReferencia)
			JOIN SysExpert.dbo.Ped_Remesas             PR  ON (NP.IdReferencia = PR.idReferencia)
			LEFT JOIN SysExpert.dbo.RelacionDocDetalle RDD ON (PR.idRemesa     = RDD.idRemesa)
			LEFT JOIN SysExpert.dbo.Doda               D   ON (RDD.idRelacion  = D.idRelacion)
		WHERE
			PG.ContadorRemesas > 0
	
	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT 
			AC.IdExpedienteDigital,
			NULL,
			@RemNumeroRemesa,
			AC.RemesaNumero,
			NULL,
			NULL
		FROM @AvisosConsolidados AC
	
	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT 
			AC.IdExpedienteDigital,
			NULL,
			@RemNumeroRemesaCuatroDigitos,
			AC.RemesaNumeroCuatroDigitos,
			EDMD.IdExpedienteDigitalMetaDato,
			NULL
		FROM @AvisosConsolidados        AC
		JOIN ExpedienteDigitalMetaDato  EDMD ON (AC.RemesaNumero = EDMD.Valor AND AC.IdExpedienteDigital = EDMD.IdExpedienteDigital)

	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT 
			AC.IdExpedienteDigital,
			NULL,
			@RemDODANumeroFolio,
			AC.DODAFolio,
			EDMD.IdExpedienteDigitalMetaDato,
			NULL
		FROM @AvisosConsolidados            AC
			JOIN ExpedienteDigitalMetaDato  EDMD ON (AC.RemesaNumero = EDMD.Valor AND AC.IdExpedienteDigital = EDMD.IdExpedienteDigital)
	INSERT INTO ExpedienteDigitalMetaDato 
		SELECT 
			AC.IdExpedienteDigital,
			NULL,
			@RemDODAIdDODA,
			AC.DODAId,
			EDMD.IdExpedienteDigitalMetaDato,
			NULL
		FROM @AvisosConsolidados            AC
			JOIN ExpedienteDigitalMetaDato  EDMD ON (AC.RemesaNumero = EDMD.Valor AND AC.IdExpedienteDigital = EDMD.IdExpedienteDigital)

	--DECLARE @EsCuentaGatos BIT

	
	--DECLARE @Facturacion TABLE
	--(
	--	IdRef               INT,
	--	IdExpedienteDigital INT,
	--	ClaveCuenta         INT,
	--	Anio                VARCHAR(MAX),
	--	Mes                 VARCHAR(MAX),
	--	Serie               VARCHAR(MAX),
	--	Folio               VARCHAR(MAX),
	--	EsCuentaHija        BIT,
	--	EsCuentaGastos      BIT
	--)

	--INSERT INTO @Facturacion
	--	SELECT 
	--		NP.IdReferencia,
	--		ED.IdExpedienteDigital,
	--		CE.ClaveCuenta,
	--		NULL,
	--		NULL,
	--		NULL,
	--		NULL,
	--		ISNULL(CE.IdDetalleMaestra, 0),
	--		NULL
	--	FROM FXpert.dbo.CuentaEncabezado           CE
	--		JOIN @NuevosPedimentos                 NP ON (CE.IdReferenciaOrigenDatos = NP.IdReferencia)
	--		JOIN ExpedienteDigital ED ON (NP.IdReferencia            = ED.IdReferenciaSysExpert)

	--UPDATE @Facturacion	
	--	SET
	--		Anio  =	RIGHT(CONVERT(VARCHAR(10), FEM.FacturaFecha,101), 4),
	--		Mes   =	LEFT(CONVERT(VARCHAR(10),  FEM.FacturaFecha,101), 2),
	--		Serie = FEM.Serie,
	--		Folio = FEM.FacturaNumero
	--FROM @Facturacion            MF
	--	JOIN FXpert.dbo.CuentaEncabezado  CEH ON MF.ClaveCuenta        = CEH.ClaveCuenta
	--	JOIN FXpert.dbo.CuentaDetalle     CDM ON (CEH.IdDetalleMaestra = CDM.IdCuentaDetalle)
	--	JOIN Fxpert.dbo.FacturaEncabezado FEM ON (CDM.ClaveCuenta      = FEM.ClaveCuenta)
	--WHERE
	--	MF.IdRef     = IdRef AND
	--	EsCuentaHija = 1

	--UPDATE @Facturacion
	--	SET 
	--		Anio  = RIGHT(CONVERT(VARCHAR(10), FE.FacturaFecha, 101), 4),
	--		Mes   = LEFT(CONVERT(VARCHAR(10),  FE.FacturaFecha, 101), 2),
	--		Serie =	FE.Serie,
	--		Folio =	FE.FacturaNumero
	--FROM @Facturacion MF
	--	JOIN Fxpert.dbo.FacturaEncabezado FE ON (MF.ClaveCuenta = FE.ClaveCuenta)
	--	WHERE
	--	MF.IdRef     = IdRef AND
	--	EsCuentaHija = 0

	--UPDATE  @Facturacion
	--	SET EsCuentaGastos =
	--		CASE
	--			WHEN Serie = 'CG' THEN
	--				1
	--			ELSE
	--				0
	--		END


	--SELECT TOP 1 @EsCuentaGatos = EsCuentaGastos FROM @Facturacion

	--IF @EsCuentaGatos = 1 
	--BEGIN
	--	INSERT INTO ExpedienteDigitalMetaDato 
	--		SELECT 
	--			F.IdExpedienteDigital,
	--			NULL,
	--			@CuetaGastoFolio,
	--			F.Folio,
	--			NULL,
	--			1
	--		FROM @Facturacion F	
		
	--	INSERT INTO ExpedienteDigitalMetaDato 
	--		SELECT 
	--			F.IdExpedienteDigital,
	--			NULL,
	--			@CuentaGastoSerie,
	--			F.Serie,
	--			EDMD.IdExpedienteDigitalMetaDato,
	--			1
	--		FROM @Facturacion                                  F
	--			JOIN ExpedienteDigitalMetaDato EDMD ON (F.Folio = EDMD.Valor AND F.IdExpedienteDigital = EDMD.IdExpedienteDigital)

	--	INSERT INTO ExpedienteDigitalMetaDato 
	--		SELECT 
	--			F.IdExpedienteDigital,
	--			NULL,
	--			@CuentaGastoAnio,
	--			F.Anio,
	--			EDMD.IdExpedienteDigitalMetaDato,
	--			1
	--		FROM @Facturacion                                  F
	--			JOIN ExpedienteDigitalMetaDato EDMD ON (F.Folio = EDMD.Valor AND F.IdExpedienteDigital = EDMD.IdExpedienteDigital)

	--	INSERT INTO ExpedienteDigitalMetaDato 
	--		SELECT 
	--			F.IdExpedienteDigital,
	--			NULL,
	--			@CuentaGastoMes,
	--			F.Mes,
	--			EDMD.IdExpedienteDigitalMetaDato,
	--			1
	--		FROM @Facturacion                                  F
	--			JOIN ExpedienteDigitalMetaDato EDMD ON (F.Folio = EDMD.Valor AND F.IdExpedienteDigital = EDMD.IdExpedienteDigital)
	--END
	--ELSE
	--BEGIN
	--	INSERT INTO ExpedienteDigitalMetaDato 
	--		SELECT 
	--			F.IdExpedienteDigital,
	--			NULL,
	--			@CFDFolio,
	--			F.Folio,
	--			NULL,
	--			1
	--		FROM @Facturacion F	
		
	--	INSERT INTO ExpedienteDigitalMetaDato 
	--		SELECT 
	--			F.IdExpedienteDigital,
	--			NULL,
	--			@CFDSerie,
	--			F.Serie,
	--			EDMD.IdExpedienteDigitalMetaDato,
	--			1
	--		FROM @Facturacion                                  F
	--			JOIN ExpedienteDigitalMetaDato EDMD ON (F.Folio = EDMD.Valor AND F.IdExpedienteDigital = EDMD.IdExpedienteDigital)

	--	INSERT INTO ExpedienteDigitalMetaDato 
	--		SELECT 
	--			F.IdExpedienteDigital,
	--			NULL,
	--			@CFDAnio,
	--			F.Anio,
	--			EDMD.IdExpedienteDigitalMetaDato,
	--			1
	--		FROM @Facturacion                                  F
	--			JOIN ExpedienteDigitalMetaDato EDMD ON (F.Folio = EDMD.Valor AND F.IdExpedienteDigital = EDMD.IdExpedienteDigital)

	--	INSERT INTO ExpedienteDigitalMetaDato 
	--		SELECT 
	--			F.IdExpedienteDigital,
	--			NULL,
	--			@CFDMes,
	--			F.Mes,
	--			EDMD.IdExpedienteDigitalMetaDato,
	--			1
	--		FROM @Facturacion                                  F
	--			JOIN ExpedienteDigitalMetaDato EDMD ON (F.Folio = EDMD.Valor AND F.IdExpedienteDigital = EDMD.IdExpedienteDigital)		
	--END



	--DECLARE @GastosComprobados TABLE
	--(
	--	IdRef                      INT,
	--	IdExpedienteDigital        INT,
	--	GastoComprobadoFolio       VARCHAR(MAX),
	--	GastoComprobadoDescripcion VARCHAR(MAX) 
	--)

	--INSERT INTO @GastosComprobados
	--	SELECT DISTINCT
	--		NP.IdReferencia,
	--		ED.IdExpedienteDigital,
	--		PGC.Folio,
	--		PGC.DescGasto
	--	FROM @NuevosPedimentos                         NP
	--		JOIN ExpedienteDigital     ED  ON (NP.IdReferencia = ED.IdReferenciaSysExpert)
	--		JOIN SysExpert.dbo.AsignacionFacturas      AF  ON (NP.IdReferencia = AF.idReferencia)
	--		JOIN SysExpert.dbo.Ped_Facturas            PF  ON (AF.idFactura    = PF.idFactura)
	--		JOIN SysExpert.dbo.Ped_GastosComprobados   PGC ON (PF.idGuia       = PGC.idGuia)


	--INSERT INTO ExpedienteDigitalMetaDato 
	--	SELECT 
	--		GC.IdExpedienteDigital,
	--		NULL,
	--		@GastoComprobadoFolio,
	--		GC.GastoComprobadoFolio,
	--		NULL,
	--		NULL
	--	FROM @GastosComprobados GC

	--INSERT INTO ExpedienteDigitalMetaDato 
	--	SELECT 
	--		GC.IdExpedienteDigital,
	--		NULL,
	--		@GastoComprobadoDescripcion,
	--		GC.GastoComprobadoDescripcion,
	--		EDMD.IdExpedienteDigitalMetaDato,
	--		NULL
	--	FROM @GastosComprobados                            GC
	--		JOIN ExpedienteDigitalMetaDato EDMD ON (GC.GastoComprobadoFolio = EDMD.Valor AND GC.IdExpedienteDigital = EDMD.IdExpedienteDigital)
	
	INSERT INTO ExpedienteDigitalProcesamiento
		SELECT
			MDP.IdExpedienteDigital,
			EDCA.IdExpedienteDigitalConfiguracionArchivo,
			GETDATE(),
			ISNULL(EDO.RutaRaiz, ISNULL(SysExpert.dbo.WEBObtenerRutaExpediente(MDP.IdRef), 'SYSEXPERT NO AH DEVUELTO UNA RUTA VALIDA') ) + EDTA.NomenclaturaNombreOrigen,
		 	EDC.NomenclaturaRutaRaizProcesamiento + EDCA.NomenclauturaNombreProcesamiento,
			EDTA.RutaMoverPosProcesamiento,
		EDTA.EliminarDespuesProcesar
		FROM @Pedimento                                            MDP
			JOIN ExpedienteDigital                                 ED    ON (MDP.IdExpedienteDigital                      = ED.IdExpedienteDigital)
			JOIN ExpedienteDigitalConfiguracion                    EDC   ON (ED.IdAgenciaSysExpert                        = EDC.IdAgenciaSysExpert)
			JOIN ExpedienteDigitalConfiguracionArchivo             EDCA  ON (EDC.IdExpedienteDigitalConfiguracion         = EDCA.IdExpedienteDigitalConfiguracion)
			JOIN ExpedienteDigitalTipoArchivo                      EDTA  ON (EDCA.IdExpedienteDigitalTipoArchivo          = EDTA.IdExpedienteDigitalTipoArchivo)
			JOIN ExpedienteDigitalOrigen                           EDO   ON (EDTA.IdExpedienteDigitalOrigen               = EDO.IdExpedienteDigitalOrigen) 
		WHERE
			EDC.Habilitado    = 1 AND
			EDCA.Habilitado   = 1 
END
GO
/****** Object:  StoredProcedure [dbo].[spExpedienteDigitalInsertaArchivo]    Script Date: 07/12/2020 08:45:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spExpedienteDigitalInsertaArchivo]
	@IdExpedienteDigital                     INT,
	@IdExpedienteDigitalProcesamientoArchivo INT,
	@NomenclaturaRutaCompletaFinalizado      VARCHAR(MAX),
	@RutaCompletaFinalizado                  VARCHAR(MAX)
AS
BEGIN
	INSERT INTO ExpedienteDigitalArchivo
		SELECT
			@IdExpedienteDigital,
			@IdExpedienteDigitalProcesamientoArchivo,
			@NomenclaturaRutaCompletaFinalizado,
			@RutaCompletaFinalizado,
			NULL, --Finalizado,
			NULL, --Ruta,
			NULL, --Nombre
			NULL, --Extension
			0     --Visible
END
GO
/****** Object:  StoredProcedure [dbo].[spExpedienteDigitalInsertaProcesamientoArchivo]    Script Date: 07/12/2020 08:45:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spExpedienteDigitalInsertaProcesamientoArchivo]
	@IdExpedienteDigitalProcesamiento INT, 
	@ArchivoRutaCompletaOrigen        VARCHAR(MAX),
	@ArchivoRutaCompletaDestino       VARCHAR(MAX),
	@Requerido                        BIT,
	@LlavePrimaria                    INT OUTPUT
AS
BEGIN
	INSERT INTO ExpedienteDigitalProcesamientoArchivo
		SELECT
			@IdExpedienteDigitalProcesamiento,
			@ArchivoRutaCompletaOrigen,
			@ArchivoRutaCompletaDestino,
			@Requerido,
			0

	SET @LlavePrimaria = SCOPE_IDENTITY()
END
GO
