SELECT PD.[idReferencia]	AS OrigenidReferencia	 
      ,[idPed_Digitalizacion] AS OrigenidPedDigitalizacion
      ,[Documento]
      ,[eDocument]
      ,[VURfcConsulta] AS VUCEMRFCConsulta
      ,[VUNumeroOperacion] AS VUCEMNumeroOperacion
  FROM BitacoraCargaSysExpertPedimento                       BCP
	JOIN [dbo].[ExtraccionSysExpertPedimentoDigitalizacion]  PD  ON (BCP.idReferencia = PD.idReferencia)
  WHERE
	BCP.FechaCargaPedimentoDigitalizacion IS NULL
