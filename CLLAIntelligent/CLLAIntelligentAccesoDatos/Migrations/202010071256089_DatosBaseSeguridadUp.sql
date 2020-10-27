SET IDENTITY_INSERT [dbo].[Usuario] ON 
INSERT [dbo].[Usuario] ([IdUsuario], [NombreCompleto], [NombreUsuario], [ContraseniaHash], [Email], [Habilitado]) VALUES (1, N'Juan Eduardo Lopez Jaime', N'administrador', N'hash', N'odrack0@hotmail.com', 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF

SET IDENTITY_INSERT [dbo].[Rol] ON 
INSERT [dbo].[Rol] ([IdRol], [Nombre], [Descripcion], [Habilitado]) VALUES (1, N'Administrador', N'SuperUsuario', 1)
SET IDENTITY_INSERT [dbo].[Rol] OFF

SET IDENTITY_INSERT [dbo].[UsuarioRol] ON 
INSERT [dbo].[UsuarioRol] ([IdUsuarioRol], [IdUsuario], [IdRol]) VALUES (1, 1, 1)
SET IDENTITY_INSERT [dbo].[UsuarioRol] OFF