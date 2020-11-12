INSERT INTO BitacoraCargaSysExpertPedimento (idReferencia)
	SELECT
		EP.OrigenidReferencia	
	FROM ExtraccionSysExpertPedimento             EP
		LEFT JOIN BitacoraCargaSysExpertPedimento BCP ON (EP.OrigenidReferencia = BCP.idReferencia)
	WHERE
		BCP.idReferencia IS NULL
	ORDER BY
		EP.OrigenidReferencia