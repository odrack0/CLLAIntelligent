  SELECT 
      PEDI.[idReferencia] AS OrigenIdReferencia
      ,[Identificador]
      ,[Complemento]
      ,[Complemento2]
      ,[Complemento3]
  FROM BitacoraCargaSysExpertPedimento                    BCP
	JOIN[dbo].[ExtraccionSysExpertPedimentoIdentificador] PEDI ON (BCP.idReferencia = PEDI.idReferencia)