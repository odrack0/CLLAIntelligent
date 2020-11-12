SELECT 
	PR.idRectificacion,
	PR.idReferencia,
	PR.idCveDocRectificacion,
	CDREC.Clave AS CveDocRectificacion,
	PR.PedimentoOriginal,
	PR.idCveDocOriginal,
	CDORG.Clave  AS CveDocOriginal,
	PR.FechaRectificacion,
	PR.idAduanaOriginal,
	A.ClaveAduana,
	A.NombreAduana,
	PR.FactorActualizacion,
	PR.TasaRecargos,
	PR.idReferenciaOriginal
FROM BitacoraExtraccionSysExpertPedimento BEP
	JOIN Ped_Rectificaciones              PR    ON (BEP.idReferencia = PR.idReferencia)
	JOIN CvesDocs                         CDREC ON (PR.idCveDocRectificacion = CDREC.idClave)
	JOIN CvesDocs                         CDORG ON (PR.idCveDocOriginal      = CDORG.idClave)
	JOIN Aduanas                          A     ON (PR.idAduanaOriginal      = A.idAduana)
WHERE
	BEP.FechaExtraccionPedimentoRectificacion IS NULL
