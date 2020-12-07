SELECT 
	PC.idPedContenedor,
	PC.idReferencia,
	PC.NumeroContenedor,
	PC.idContenedor,
	C.Clave AS ClaveContenedor,
	C.Descripcion AS DescripcionContenedor,
	PCC.Candado,
	PCC.Color AS CandadoColor
FROM BitacoraExtraccionSysExpertPedimento BEP 
	JOIN Ped_Contenedores                 PC   ON (BEP.idReferencia   = PC.idReferencia)
	JOIN Contenedores                     C    ON (PC.idContenedor    = C.idContenedor)
	LEFT JOIN Ped_ContenedoresCandados    PCC  ON (PC.idPedContenedor = PCC.idPedContenedor)
