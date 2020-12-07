INSERT INTO BitacoraExtraccionSysExpertPedimento(idReferencia)
	SELECT
		PG.idReferencia
	FROM Ped_Grales                                    PG
		LEFT JOIN BitacoraExtraccionSysExpertPedimento SP  ON (PG.idReferencia = SP.idReferencia)
		LEFT JOIN BitacoraExtraidoSysExpertPedimento   EXT ON (PG.idReferencia = EXT.idReferencia)
	WHERE 
		PG.Acuse               <> '' 
		AND PG.Bacuse          <> '' 
		AND PG.Desaduanamiento <> '' AND
		(SP.idReferencia IS NULL AND EXT.idReferencia IS NULL)
	ORDER BY 
		PG.idReferencia