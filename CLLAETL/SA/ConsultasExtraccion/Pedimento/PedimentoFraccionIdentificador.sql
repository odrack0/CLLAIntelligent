SELECT PFI.[idReferencia] AS OrigenidReferencia
      ,[idPedFraccion] AS OrigenidPedFraccion
      ,[Identificador]
      ,[Complemento]
      ,[Complemento2]
      ,[Complemento3]
  FROM BitacoraCargaSysExpertPedimento                              BCP
	JOIN [dbo].[ExtraccionSysExpertPedimentoFraccionIdentificador]  PFI  ON (BCP.idReferencia = PFI.idReferencia)

