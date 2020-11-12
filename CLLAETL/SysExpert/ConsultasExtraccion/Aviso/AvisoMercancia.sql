--264-642
SELECT 
	PMA.idMercAvisos,
	PMA.idRemesa,
	PMA.Orden,
	PMA.Descripcion,
	PMA.ValorME,
	PMA.ValorDolares,
	PMA.idEquivalencia,
	E.Equivalencia,
	PMA.NumeroBultos,
	PMA.idPaisMoneda,
	PM.ClaveMoneda,
	PM.ClaveM3 AS ClavePais,
	PM.NombrePais,
	PMA.NumeroFactura,
	PMA.CantidadComercial
FROM Ped_MercanciasAvisos   PMA
	JOIN Monedas_Equivalencias  E ON (PMA.idEquivalencia =  E.idEquivalencia)
	JOIN Paises                 PM ON (PMA.idPaisMoneda = PM.idPais)

