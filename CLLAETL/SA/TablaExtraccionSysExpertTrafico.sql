USE [CLLA_DWH_SA]
GO

/****** Object:  Table [dbo].[ExtraccionSysExpertTrafico]    Script Date: 24/10/2020 08:21:15 p. m. ******/
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


