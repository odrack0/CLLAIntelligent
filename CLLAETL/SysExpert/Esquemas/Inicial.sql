USE [SysExpert]
GO
/****** Object:  Table [dbo].[BitacoraExtraccionSysExpert]    Script Date: 23/11/2020 10:37:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BitacoraExtraccionSysExpert](
	[idTrafico] [int] NULL,
	[idEstatusGuias] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BitacoraExtraccionSysExpertPedimento]    Script Date: 23/11/2020 10:37:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BitacoraExtraccionSysExpertPedimento](
	[idReferencia] [int] NULL,
	[FechaExtraccionPedimento] [datetime] NULL,
	[FechaExtraccionPedimentoContenedor] [datetime] NULL,
	[FechaExtraccionPedimentoContribucion] [datetime] NULL,
	[FechaExtraccionPedimentoDescarga] [datetime] NULL,
	[FechaExtraccionPedimentoDigitalizacion] [datetime] NULL,
	[FechaExtraccionPedimentoFactura] [datetime] NULL,
	[FechaExtraccionPedimentoFacturaPartida] [datetime] NULL,
	[FechaExtraccionPedimentoFecha] [datetime] NULL,
	[FechaExtraccionPedimentoFraccion] [datetime] NULL,
	[FechaExtraccionPedimentoFraccionContribucion] [datetime] NULL,
	[FechaExtraccionPedimentoFraccionIdentificador] [datetime] NULL,
	[FechaExtraccionPedimentoFraccionPermiso] [datetime] NULL,
	[FechaExtraccionPedimentoGastoComprobado] [datetime] NULL,
	[FechaExtraccionPedimentoHojaControl] [datetime] NULL,
	[FechaExtraccionPedimentoIdentificador] [datetime] NULL,
	[FechaExtraccionPedimentoParteII] [datetime] NULL,
	[FechaExtraccionPedimentoParteIIContenedor] [datetime] NULL,
	[FechaExtraccionPedimentoParteIIMercancia] [datetime] NULL,
	[FechaExtraccionPedimentoRectificacion] [datetime] NULL,
	[FechaExtraccionPedimentoRectificacionDiferencia] [date] NULL
) ON [PRIMARY]
GO

/****** Object:  Index [IX_idReferencia]    Script Date: 23/11/2020 10:37:38 p. m. ******/
CREATE UNIQUE CLUSTERED INDEX [IX_idReferencia] ON [dbo].[BitacoraExtraccionSysExpertPedimento]
(
	[idReferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[BitacoraExtraccionSysExpertRemesa]    Script Date: 23/11/2020 10:37:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BitacoraExtraccionSysExpertRemesa](
	[idRemesa] [int] NULL,
	[FechaExtraccionRemesa] [datetime] NULL,
	[FechaExtraccionRemesaFactura] [datetime] NULL,
	[FechaExtraccionRemesaPartida] [datetime] NULL,
	[FechaExtraccionRemesaContenedor] [datetime] NULL,
	[FechaExtraccionRemesaAvisoMercancia] [datetime] NULL,
	[FechaExtraccionRemesaAvisoIdentificador] [datetime] NULL
) ON [PRIMARY]
GO

/****** Object:  Index [IX_idRemesa]    Script Date: 23/11/2020 10:38:18 p. m. ******/
CREATE CLUSTERED INDEX [IX_idRemesa] ON [dbo].[BitacoraExtraccionSysExpertRemesa]
(
	[idRemesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

