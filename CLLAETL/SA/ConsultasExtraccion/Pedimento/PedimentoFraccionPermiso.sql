SELECT PFP.[idReferencia] AS OrigenidReferencia
      ,[idPedFraccion] AS OrigenidPedFraccion
      ,[ClavePermiso] AS PermisoClave
      ,[Descripcion]  AS PermisoDescripcion
      ,[FirmaPermiso] AS PermisoFirma
      ,[NumeroPermiso] AS PermisoNumero
      ,[ValorComercialDlls] AS ValorMercancia
      ,[Cantidad_UMT] AS CantidadUnidadMedidaTarifa
  FROM BitacoraCargaSysExpertPedimento                       BCP
	JOIN [dbo].[ExtraccionSysExpertPedimentoFraccionPermiso] PFP ON (BCP.idReferencia = PFP.idReferencia)