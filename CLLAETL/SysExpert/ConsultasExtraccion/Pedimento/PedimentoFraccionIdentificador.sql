SELECT 
	PF.idReferencia,
	PF.idPedFraccion,
	PIF.idIdentificadorFraccion,
	PIF.idIdentificador,
	I.Identificador,
	PIF.Complemento,
	PIF.Complemento2,
	PIF.Complemento3
FROM BitacoraExtraccionSysExpertPedimento BEP  
	JOIN Ped_Fraccion                     PF  ON (BEP.idReferencia     = PF.idReferencia)
	JOIN Ped_IdentificadoresFraccion      PIF ON (PIF.idPedFraccion    = PF.idPedFraccion)
	JOIN Identificadores                  I   ON (PIF.idIdentificador  = I.idIdentificador)
WHERE
	BEP.FechaExtraccionPedimentoFraccionIdentificador IS NULL