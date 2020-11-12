/****** Object:  Table [dbo].[BitacoraExtraccionSysExpertPedimento]    Script Date: 09/11/2020 07:01:50 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BitacoraExtraccionSysExpertPedimento]') AND type in (N'U'))
DROP TABLE [dbo].[BitacoraExtraccionSysExpertPedimento]
GO

/****** Object:  Table [dbo].[BitacoraExtraccionSysExpertPedimento]    Script Date: 09/11/2020 07:01:50 p. m. ******/
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

/****** Object:  Index [IX_idReferencia]    Script Date: 09/11/2020 07:02:14 p. m. ******/
CREATE UNIQUE CLUSTERED INDEX [IX_idReferencia] ON [dbo].[BitacoraExtraccionSysExpertPedimento]
(
	[idReferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
