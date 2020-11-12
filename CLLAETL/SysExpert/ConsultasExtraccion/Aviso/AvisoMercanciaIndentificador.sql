SELECT 
	PIM.idIdentMercancias,
	PIM.idMercAvisos,
	PIM.idIdentificador,
	I.Identificador,
	PIM.Complemento1,
	PIM.Complemento2,
	PIM.Complemento3
FROM Ped_IdentificadoresMercancias PIM
	JOIN Identificadores           I    ON (PIM.idIdentificador =  I.idIdentificador)
	