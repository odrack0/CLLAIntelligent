CREATE FUNCTION [dbo].[fnUsuarios]
(	
	@IdUsuario        INT,
	@CriterioBusqueda VARCHAR(500)
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT
		U.*
	FROM Usuario U
	WHERE
		U.Habilitado = 1 AND
		((U.IdUsuario = @IdUsuario OR @IdUsuario IS NULL ) AND 
		(U.Email          LIKE '%' + @CriterioBusqueda + '%' OR
		 U.NombreCompleto LIKE '%' + @CriterioBusqueda + '%' OR
		 U.NombreUsuario  LIKE '%' + @CriterioBusqueda + '%' OR
		 ISNULL(@CriterioBusqueda, '')  = ''))
)
GO


CREATE FUNCTION [dbo].[fnUsuariosRoles]
(	
	@IdUsuario     INT,
	@NombreRol     VARCHAR(50),
	@NombreUsuario VARCHAR(100)
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT
		UR.*,
		U.NombreCompleto AS UsuarioNombreCompleto,
		U.NombreUsuario  AS UsuarioNombre,
		R.Nombre         AS RolNombre
	FROM UsuarioRol  UR
		JOIN Usuario U  ON (UR.IdUsuario = U.IdUsuario)
		JOIN ROL     R  ON (UR.IdRol = R.IdRol)
	WHERE
		(R.Habilitado = 1 AND U.Habilitado = 1) AND
		((UR.IdUsuario    =  @IdUsuario    OR @IdUsuario     IS NULL) AND
		 (R.Nombre        = @NombreRol     OR @NombreRol     IS NULL) AND
		 (U.NombreUsuario = @NombreUsuario OR @NombreUsuario IS NULL))
)
GO



CREATE FUNCTION [dbo].[fnSucursales]
(
	@IdUsuario        INT,
	@IdSucursal       INT,
	@CriterioBusqueda VARCHAR(500)
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT
		S.*
	FROM Sucursal              S
		JOIN UsuarioSucursal   US ON (S.IdSucursal          = US.IdSucursal)
	WHERE		
		((S.IdSucursal = @IdSucursal OR @IdSucursal IS NULL) AND
		(S.Nombre       LIKE '%' + @CriterioBusqueda + '%' OR
	      ISNULL(@CriterioBusqueda, '') = ''))
)
GO

CREATE FUNCTION [dbo].[fnClientes]
(	
	@IdUsuario        INT,
	@IdCliente        INT,
	@CriterioBusqueda VARCHAR(500)
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT
		C.IdCliente,
		C.RFC,
		C.RazonSocial,
		C.CodigoPostal,
		C.Calle,
		C.NumeroExterior,
		C.NumeroInterior,
		C.Ciudad,
		C.Localidad,
		C.IdEntidadFederativa,
		C.Colonia,
		EF.Nombre         AS EntidadFederativaNombre,
		EF.SATClaveEstado AS EntidadFederativaClave
	FROM Cliente C
		JOIN EntidadFederativa      EF  ON (C.IdEntidadFederativa = EF.IdEntidadFederativa)
	WHERE
		((C.IdCliente = @IdCliente OR @IdCliente IS NULL) AND
		 (C.RazonSocial LIKE '%' + @CriterioBusqueda + '%' OR
		 C.Calle        LIKE '%' + @CriterioBusqueda + '%' OR		
		 C.Ciudad       LIKE '%' + @CriterioBusqueda + '%' OR
	     ISNULL(@CriterioBusqueda, '') = ''))
)
GO