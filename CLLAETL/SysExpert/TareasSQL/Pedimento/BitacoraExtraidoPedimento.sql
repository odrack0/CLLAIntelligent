INSERT INTO BitacoraExtraidoSysExpertPedimento
	SELECT
		idReferencia,
		GETDATE()
	FROM BitacoraExtraccionSysExpertPedimento

TRUNCATE TABLE BitacoraExtraccionSysExpertPedimento