INSERT INTO BitacoraCargadoSysExpertPedimento
	SELECT
		idReferencia,
		GETDATE()
	FROM BitacoraCargaSysExpertPedimento

TRUNCATE TABLE BitacoraCargaSysExpertPedimento