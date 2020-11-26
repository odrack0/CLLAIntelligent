SELECT PFC.[idReferencia] AS OrigenidReferencia
      ,[idPedFraccion] AS OrigenidPedFraccion
      ,[ClaveContribucion] AS ContribucionClave
      ,[Abreviacion]       AS ContribucionAbreviacion
      ,[ct_Descripcion]    AS ContribucionDescrocion
      ,[ImporteContribucion] AS ContribucionImporte
	  ,[PorcentajeAplicacion]
      ,[ClaveFormaPago] AS FormaPagoClave
      ,[fp_Descripcion] AS FormaPagoDescripcion
      ,[TipoTasa] AS TasaClave
      ,[DescripcionTasa] AS TasaDescripcion      
      ,[TasaContribucion] AS TasaContribucion
  FROM BitacoraCargaSysExpertPedimento BCP
	JOIN [dbo].[ExtraccionSysExpertPedimentoFraccionContribucion] PFC ON (BCP.idReferencia = PFC.idReferencia)
  WHERE
	BCP.FechaCargaPedimentoFraccionContribucion IS NULL


