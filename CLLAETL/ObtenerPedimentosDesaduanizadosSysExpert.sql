SELECT
	PG.idReferencia,
	ISNULL(PR.FechaRectificacion, PFP.Fecha) AS FechaOperacion
FROM Ped_Grales              PG
	JOIN Ped_Fechas          PFP ON (PG.idReferencia = PFP.idReferencia AND PFP.idFecha = 2)
	LEFT JOIN Ped_Rectificaciones PR  ON (PG.idReferencia = PR.idReferencia)
WHERE
	ISNULL(PG.Acuse, '')           <> '' AND
	ISNULL(PG.Bacuse, '')          <> '' AND
	ISNULL(PG.Desaduanamiento, '') <> ''


