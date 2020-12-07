SELECT 
  
	EPF.[idReferencia] AS OrigenIdReferencia	
	,EPF.idPedFraccion AS OrigenidPedFraccion
	,[Fraccion] AS FraccionArancelaria
	,[Descripcion]
	,[Marca]
	,[CantidadTarifa]
	,[PaisOrigenClave]
	,[PaisOrigenNombre]
	,[PaisVendedorClave]
	,[PaisVendedorNombre]
	,[PaisMonedaClave]
	,[PaisMonedaNombre]
	,[PaisMonedaMoneda] AS PaisMonedaClaveMoneda
	,[ImporteME]
	,[ValorAgregado]
	,[ValorFactura]
	,[ValorAduana]
	,[ValorDolares]
	,[LongDescripcion]
	,[ORDEN] AS OrdenPedimento
	,[PaisProcedenciaClave]
	,[PaisProcedenciaNombre] 
	,[NuevasObservaciones] AS Observaciones
  FROM BitacoraCargaSysExpertPedimento                 BCP
	JOIN [dbo].[ExtraccionSysExpertPedimentoFraccion]  EPF ON (BCP.idReferencia = EPF.idReferencia)
