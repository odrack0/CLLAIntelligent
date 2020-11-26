SELECT PPII.[idReferencia] AS OrigenidReferencia
      ,[idPedParteII] AS OrigenidPedParteII
      ,[NoParteII]   
      ,[DatosVehiculo]
  FROM BitacoraCargaSysExpertPedimento BCP
	JOIN [dbo].[ExtraccionSysExpertPedimentoParteII] PPII ON (BCP.idReferencia = PPII.idReferencia)
  WHERE
	BCP.FechaCargaPedimentoParteII IS NULL
