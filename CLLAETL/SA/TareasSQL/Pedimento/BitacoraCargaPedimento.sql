INSERT INTO BitacoraCargaSysExpertPedimento (idReferencia)
	SELECT
		EP.OrigenidReferencia	
	FROM ExtraccionSysExpertPedimento               EP
		LEFT JOIN BitacoraCargaSysExpertPedimento   BCP ON (EP.OrigenidReferencia = BCP.idReferencia)
		LEFT JOIN BitacoraCargadoSysExpertPedimento C   ON (EP.OrigenidReferencia = C.idReferencia)
	WHERE
		(BCP.idReferencia IS NULL AND C.idReferencia IS NULL)
	ORDER BY
		EP.OrigenidReferencia