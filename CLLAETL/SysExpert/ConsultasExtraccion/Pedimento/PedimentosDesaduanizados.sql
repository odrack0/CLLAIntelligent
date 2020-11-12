SELECT
	PG.idReferencia
FROM Ped_Grales                                    PG
	LEFT JOIN BitacoraExtraccionSysExpertPedimento SP ON (PG.idReferencia = SP.idReferencia)
WHERE 
	PG.Acuse               <> '' 
	AND PG.Bacuse          <> '' 
	AND PG.Desaduanamiento <> '' AND
	SP.idReferencia IS NULL
ORDER BY 
	PG.idReferencia