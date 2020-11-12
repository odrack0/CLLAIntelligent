SELECT 
	PII.idReferencia,
	PIIC.idPedParteII,
	PIIC.idPedPIIContenedores,
	PIIC.idContenedor,
	C.Clave,
	C.Descripcion,
	PIIC.NumeroContenedor,
	PIICC.Candado,
	PIICC.Color
FROM BitacoraExtraccionSysExpertPedimento    BEP
	JOIN Ped_PartesII                        PII   ON (BEP.idReferencia          = PII.idReferencia)       
	JOIN Ped_PartesIIContenedores            PIIC  ON (PII.idPedParteII          = PIIC.idPedParteII)
	JOIN Contenedores                        C     ON (PIIC.idContenedor         = C.idContenedor)
	LEFT JOIN Ped_PartesIIContenedorCandados PIICC ON (PIIC.idPedPIIContenedores = PIICC.idPedPIIContenedores)
WHERE
	BEP.FechaExtraccionPedimentoParteIIContenedor IS NULL