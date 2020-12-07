SELECT 
	PD.[idReferencia] AS OrigenidReferencia
	,[idDescargasPed] AS OrigenidDescargasPed
	,[PatenteOriginal] 
	,[PedimentoOriginal]
	,[ClaveAduana] AS AduanaClava
	,[NombreAduana] AS AduanaNombre	
	,[FechaOriginal]
	,[FechaDescarga]
	,[FechaPago]
	,[FraccionOriginal]
	,[CantidadUMC] AS UnidadMedidaComercialCantidad
	,[ClaveUnidad] AS UnidadMedidaComercialClave
	,[AbreviacionUnidad] AS UnidadMedidaComercialAbreviacion
	,[DescripcionUnidad] AS UnidadMedidaComercialDescripcion		
  FROM BitacoraCargaSysExpertPedimento                 BCP
	JOIN [dbo].[ExtraccionSysExpertPedimentoDescarga]  PD  ON (BCP.idReferencia = PD.idReferencia)

