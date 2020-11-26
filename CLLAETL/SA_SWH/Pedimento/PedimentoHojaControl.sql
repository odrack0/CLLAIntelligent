SELECT PHC.[idReferencia] AS OrigenidReferencia
      ,[idControl] AS OrigenidControl
      ,[FechaCaptura]
      ,[Capturo]
  FROM BitacoraCargaSysExpertPedimento                   BCP
	JOIN [dbo].[ExtraccionSysExpertPedimentoHojaControl] PHC ON (BCP.idReferencia = PHC.idReferencia)
  WHERE
	BCP.FechaCargaPedimentoHojaControl IS NULL

