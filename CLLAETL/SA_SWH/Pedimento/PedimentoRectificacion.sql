SELECT PR.[idReferencia] AS OrigenidReferencia
      ,[idRectificacion] AS OrigenidRectificacion
      ,[idReferenciaOriginal] AS OrigenidReferenciaOriginal
      ,[CveDocOriginal] AS OrigenClaveDocumento
	  ,[PedimentoOriginal]   AS OriginalNumeroPedimento      
      ,[CveDocRectificacion] AS RectificacionClavePedimento
	  ,[FechaRectificacion]
      ,[ClaveAduana] AS AduanaClave
      ,[NombreAduana] AS AduanaNombre
      ,[FactorActualizacion]
      ,[TasaRecargos]
  FROM BitacoraCargaSysExpertPedimento                     BCP
	JOIN [dbo].[ExtraccionSysExpertPedimentoRectificacion] PR  ON (BCP.idReferencia = PR.idReferencia) 
  WHERE
	BCP.FechaCargaPedimentoRectificacion IS NULL