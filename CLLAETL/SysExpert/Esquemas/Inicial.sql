/****** Object:  Table [dbo].[BitacoraExtraccionSysExpert]    Script Date: 26/11/2020 06:12:47 p. m. ******/
CREATE TABLE [dbo].[BitacoraExtraccionSysExpert](
	[idTrafico] [int] NULL,
	[idEstatusGuias] [int] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[BitacoraExtraccionSysExpertPedimento]    Script Date: 26/11/2020 06:11:01 p. m. ******/
CREATE TABLE [dbo].[BitacoraExtraccionSysExpertPedimento](
	[idReferencia] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Index [IX_idReferencia]    Script Date: 26/11/2020 06:11:36 p. m. ******/
CREATE UNIQUE CLUSTERED INDEX [IX_idReferencia] ON [dbo].[BitacoraExtraccionSysExpertPedimento]
(
	[idReferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[BitacoraExtraccionSysExpertRemesa]    Script Date: 26/11/2020 06:12:03 p. m. ******/
CREATE TABLE [dbo].[BitacoraExtraccionSysExpertRemesa](
	[idRemesa] [int] NULL
) ON [PRIMARY]
GO

/****** Object:  Index [IX_idRemesa]    Script Date: 26/11/2020 06:12:22 p. m. ******/
CREATE CLUSTERED INDEX [IX_idRemesa] ON [dbo].[BitacoraExtraccionSysExpertRemesa]
(
	[idRemesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[BitacoraExtraidoSysExpertPedimento]    Script Date: 26/11/2020 06:13:43 p. m. ******/
CREATE TABLE [dbo].[BitacoraExtraidoSysExpertPedimento](
	[idReferencia] [int] NOT NULL,
	[FechaHora] [datetime] NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Index [IX_idReferencia]    Script Date: 26/11/2020 06:14:00 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_idReferencia] ON [dbo].[BitacoraExtraidoSysExpertPedimento]
(
	[idReferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[BitacoraExtraidoSysExpertRemesa]    Script Date: 26/11/2020 06:14:17 p. m. ******/
CREATE TABLE [dbo].[BitacoraExtraidoSysExpertRemesa](
	[idRemesa] [int] NOT NULL,
	[FechaHora] [datetime] NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Index [IX_idRemesa]    Script Date: 26/11/2020 06:14:27 p. m. ******/
CREATE UNIQUE CLUSTERED INDEX [IX_idRemesa] ON [dbo].[BitacoraExtraidoSysExpertRemesa]
(
	[idRemesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

