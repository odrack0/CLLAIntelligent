SELECT 
	PIP.idIdentificadorPed,
	PIP.idReferencia,
	PIP.idIdentificador,
	I.Identificador,
	PIP.Complemento,
	PIP.Complemento2,
	PIP.Complemento3
FROM BitacoraExtraccionSysExpertPedimento BEP
	JOIN Ped_IdentificadoresPedimento     PIP ON (BEP.idReferencia = PIP.idReferencia)
	JOIN Identificadores                  I   ON (PIP.idIdentificador = I.idIdentificador)
WHERE
	BEP.FechaExtraccionPedimentoIdentificador IS NULL

