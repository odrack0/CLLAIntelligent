SELECT [idReferenciaGasto] AS OrigenidReferencia
       ,[idGastoComprobado] AS OrigenidGastoComprobado
       ,[idGuia] AS OrigenidGuia
	   ,[TipoGasto] AS GastoTipo
       ,[DescGasto] AS GastoDescripcion
       ,[FechaFolio] AS GastoFecha
	   ,[CONCEPTO]  AS GastoConcepto
       ,[Folio]     AS GastoFolio
       ,[Cheque] AS GastoCheque
       ,[Monto] AS GastoMonto
       ,[Iva] AS GastoIVA     
  FROM BitacoraCargaSysExpertPedimento                     BCP
	JOIN [dbo].[ExtraccionSysExpertPedimentoGastoComprobado] PGC ON (BCP.idReferencia = PGC.idReferenciaGasto)
  WHERE
	BCP.FechaCargaPedimentoGastoComprobado IS NULL


