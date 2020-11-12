SELECT
	PF.idReferencia,
	PF.idPedFraccion,
	PPF.idPermisosFraccion,
	PPF.idPermiso,
	P.ClavePermiso,
	P.Descripcion,
	PPF.FirmaPermiso,
	PPF.NumeroPermiso,
	PPF.ValorComercialDlls,
	PPF.Cantidad_UMT
FROM BitacoraExtraccionSysExpertPedimento BEP
	JOIN Ped_Fraccion                     PF  ON (BEP.idReferencia = PF.idReferencia)
	JOIN Ped_PermisosFraccion             PPF ON (PF.idPedFraccion = PPF.idFraccion)
	LEFT JOIN Permisos                    P   ON (PPF.idPermiso    = P.idPermiso)
WHERE
	BEP.FechaExtraccionPedimentoFraccionPermiso IS NULL




