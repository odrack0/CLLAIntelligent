SELECT 
	  PC.[idReferencia] AS OrigenidReferencia
	  ,[idPedContribuciones] AS OrigenidPedContribuciones
      ,[ClaveContribucion] AS ContribucionClave
      ,[Abreviacion] AS ContribucionAbreviacion
      ,[ct_Descripcion] AS ContribucionDescripcion
      ,[ImporteContribucion] AS ContribucionImporte
	  ,[PorcentajeAplicar] 
      ,[ClaveFormaPago] AS FormaPagoClave
      ,[fp_Descripcion] AS FormaPagoDescripcion      
      ,[TipoTasa] AS TasaClave
      ,[TasaDescripcion] AS TasaDescripcion
      ,[TasaContribucion] AS TasaContribucion
  FROM BitacoraCargaSysExpertPedimento                    BCP
   JOIN [dbo].[ExtraccionSysExpertPedimentoContribucion]  PC  ON (BCP.idReferencia = PC.idReferencia)
  WHERE
	BCP.FechaCargaPedimentoContribucion IS NULL
	
