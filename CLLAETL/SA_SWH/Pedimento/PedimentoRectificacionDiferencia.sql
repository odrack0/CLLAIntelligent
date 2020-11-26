SELECT PRD.[idReferencia] AS OrigenidReferencia
      ,[idDiferenciasRect] AS OrigenidDiferenciaRect
      ,[ClaveContribucion] AS ContribucionClave
      ,[Abreviacion] AS ContribucionAbreviacion
      ,[ct_Descripcion] AS ContribucionDescripcion
      ,[Importe] AS ContribucionImporte
	  ,[ClaveFormaPago] AS FormaPagoClave
      ,[fp_Descripcion] AS FormaPagoDescripcion
      
  FROM BitacoraCargaSysExpertPedimento                               BCP
	JOIN [dbo].[ExtraccionSysExpertPedimentoRectificacionDiferencia] PRD ON (BCP.idReferencia = PRD.idReferencia)
  WHERE
	BCP.FechaCargaPedimentoRectificacionDiferencia IS NULL
