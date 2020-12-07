SELECT 
	D.idPed_Digitalizacion,
	D.idReferencia,
	D.Documento,
	D.eDocument,
	D.idTipoDocumentoVU,
	D.VURfcConsulta,
	D.VUNumeroOperacion
FROM BitacoraExtraccionSysExpertPedimento BIP
	JOIN Ped_Digitalizacion               D   ON (BIP.idReferencia = D.idReferencia)