SELECT 
	HC.idControl,
	HC.idReferencia,
	HC.FechaCaptura,
	HC.Capturo
FROM BitacoraExtraccionSysExpertPedimento BEP
	JOIN PEd_HojaControl                  HC ON (BEP.idReferencia = HC.idReferencia)