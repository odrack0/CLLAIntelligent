SELECT 
	R.idRemesa,
	R.idReferencia,
	R.NumeroRemesa,
	R.FechaOperacion,
	R.idTipoCambio,
	TC.Valor AS TipoCambio,
	R.ArchivoValidacion,
	R.Firma,
	R.Desaduanamiento,
	R.DesaduanaFecha,
	R.Aleatorio,
	R.Observaciones,
	R.idPrevalidador,
	PR.ClavePrevalidador,
	PR.NombrePrevalidador,
	R.FolioAviso,
	R.Contenedor,
	R.idTransportista,
	T.Clave   AS ClaveTransportista,
	T.CAAT    AS CAATTransportista,
	T.Nombre  AS NombreTransportista,
	R.TipoMedioTransporte,
	R.IdentificacionTransporte,
	R.CantidadGuias,
	R.MarcasNumeros,
	R.DatosVehiculo,
	R.idRecinto,
	RCN.Clave AS ClaveRecinto,
	RCN.Nombre AS NombreRecinto,
	R.Contingencia
  FROM Ped_Remesas             R
	JOIN TipoCambio            TC  ON (R.idTipoCambio    = TC.idTipoCambio)
	LEFT JOIN Prevalidadores   PR  ON (R.idPrevalidador  = PR.idPrevalidador)
	LEFT JOIN Transportistas   T   ON (R.idTransportista = T.idTransportista)
	LEFT JOIN RecintosFiscales RCN ON (R.idRecinto       = RCN.idRecinto)


GO


