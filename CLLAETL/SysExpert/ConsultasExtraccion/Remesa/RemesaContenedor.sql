
SELECT 
	PRC.idRemContenedor,
	PRC.idRemesa,
	PRC.NumeroContenedor,
	PRC.idContenedor
 FROM Ped_RemesasContenedores                 PRC
	LEFT JOIN Contenedores                    C    ON (PRC.idContenedor    = C.idContenedor)
	LEFT JOIN Ped_RemesasContenedoresCandados PRCC ON (PRC.idRemContenedor = PRCC.idRemContenedor)
