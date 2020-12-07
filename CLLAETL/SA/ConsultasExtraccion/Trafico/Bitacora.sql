INSERT INTO BitacoraCargaSysExpertTrafico
	SELECT
		ET.idTrafico,
		NULL
	FROM ExtraccionSysExpertTrafico             ET
		LEFT JOIN BitacoraCargaSysExpertTrafico BC ON (ET.idTrafico = BC.idTrafico)
	WHERE
		BC.idTrafico IS NULL