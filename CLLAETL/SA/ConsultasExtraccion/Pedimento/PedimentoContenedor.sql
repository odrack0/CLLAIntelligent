SELECT
	  PC.[idReferencia] AS OrigenidReferencia
	  ,[idPedContenedor] AS OrigenidPedContenedor      
      ,[NumeroContenedor] AS ContenedorNumero
      ,[ClaveContenedor] AS ContenedorClave
      ,[DescripcionContenedor] AS ContenedorDescripcion
      ,[Candado]
      ,[CandadoColor]
  FROM BitacoraCargaSysExpertPedimento                  BCP
	JOIN [dbo].[ExtraccionSysExpertPedimentoContenedor] PC  ON (BCP.idReferencia = PC.idReferencia)
