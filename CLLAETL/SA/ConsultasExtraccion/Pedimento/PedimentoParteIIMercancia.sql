SELECT PPIIM.idReferencia AS OrigenidReferencia
      ,[idPedParteII] AS OrigenidPedParteII
      ,[idPedPIIMercancia] AS OrigenidPedPIIMercancia
      ,[Mercancia]
      ,[CantidadComercial]
      ,[ClaveUnidadComercial] AS UnidadMedidaComercialClave
      ,[AbreviacionUnidadComercial]  AS UnidadMedidaComercialAbreviacion
      ,[DescripcionUnidadComercial] AS UnidadMedidaComercialDescripcion
      ,[CantidadTarifa]
      ,[ClaveUnidadTarifa] AS UnidadMedidaTarifaClave
      ,[AbreviacionUnidadTarifa] AS UnidadMedidaTarifaAbreviacion
      ,[DescripcionUnidadTarifa] AS UnidadMedidaDescripcion
      ,[Peso]
      ,[CantidadEnKg]
  FROM BitacoraCargaSysExpertPedimento                         BCP
	JOIN [dbo].[ExtraccionSysExpertPedimentoParteIIMercancia] PPIIM ON (BCP.idReferencia = PPIIM.idReferencia)
