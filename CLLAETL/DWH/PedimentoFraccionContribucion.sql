
SELECT PFC.[idReferencia]
      ,[idPedFraccion]
      ,[ClaveContribucion]
      ,[Abreviacion]
      ,[ct_Descripcion]
      ,[PorcentajeAplicacion]
      ,[ClaveFormaPago]
      ,[fp_Descripcion]
      ,[TipoTasa]
      ,[DescripcionTasa]
      ,[ImporteContribucion]
      ,[TasaContribucion]
  FROM BitacoraCargaSysExpertPedimento BCP
	JOIN [dbo].[ExtraccionSysExpertPedimentoFraccionContribucion] PFC ON (BCP.idReferencia = PFC.idReferencia)
  WHERE
	BCP.FechaCargaPedimentoFraccionContribucion IS NULL
