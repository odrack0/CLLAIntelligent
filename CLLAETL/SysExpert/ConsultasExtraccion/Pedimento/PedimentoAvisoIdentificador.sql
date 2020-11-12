SELECT 
	PIA.idIdentAvisos,
	PIA.idRemesa,
	PIA.idIdentificador,
	I.Identificador,
	PIA.Complemento1,
	PIA.Complemento2,
	PIA.Complemento3
FROM Ped_IdentificadoresAvisos PIA
	JOIN Identificadores       I   ON (PIA.idIdentificador = I.idIdentificador)
	