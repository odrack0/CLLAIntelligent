--25,227,148
SELECT 
	PP.idPartida,
	PP.idFactura,
	PP.idParte,
	P.Clave AS ClaveParte,
	PC.ptc_Descripcion AS DescripcionTipoParte,
	PP.Descripcion,
	PP.Marca,
	PP.Modelo,
	PP.NoSerie,
	PP.CantidadComercial,
	PP.idUMC,
	UMC.ClaveUnidad AS ClaveUnidadComercial,
	UMC.Abreviacion AS AbreviacionUnidadComercial,
	UMC.Descripcion AS DescripcionUnidadComercial,
	PP.ImporteME,
	PP.ImporteUSD,
	PP.ValorMciaME,
	PP.ValorMciaUSD,
	PP.ValorAgregadoUSD,
	PP.PesoBruto,
	PP.idPaisOrigen,
	PO.ClaveM3 AS ClavePaisOrigen,
	PO.NombrePais AS NombrePaisOrigen,
	PP.idFraccion,
	TG.Fraccion,
	PP.CantidadTarifa,
	PP.idIdentificador,
	IDEI.Identificador,
	PP.Complemento,
	PP.idOrdenFraccion,
	PP.NOTA_1,
	PP.NOTA_2,
	PP.NOTA_3,
	PP.NOTA_4,
	PP.NOTA_5,
	PP.PrecioUnitario,
	PP.Commodity,
	PP.Bultos,
	PP.idPartidaOriginal,
	PP.OrdenCompra,
	PP.idIdentificador2,
	IDEII.Identificador AS Identificador2,
	PP.Complemento2_1,
	PP.Complemento2_2,
	PP.Comlpemento2_3,
	idIdentificador3,
	IDEIII.Identificador AS Identificador3,
	PP.Complemento3_1,
	PP.Complemento3_2,
	PP.Complemento3_3,
	PP.idUnidadCOVE,
	UMCOVE.Clave       AS ClaveUnidadMedidaCOVE,
	UMCOVE.Descripcion AS DescripcionUnidadMedidaCOVE,
	PP.CantidadCOVE,
	PP.DescripcionCOVE,	
	PP.idValoracion,
	VAL.ClaveValoracion,
	VAL.mv_Descripcion,
	PP.ValorCOVE,
	PP.PartePreCaptura
  FROM Ped_Partidas                PP
	JOIN Ped_Facturas              PF     ON (PP.idFactura        = PF.idFactura)
	JOIN AsignacionFacturas        AF     ON (PF.idFactura        = AF.idFactura)
	JOIN Ped_Grales                PG     ON (AF.idReferencia     = PG.idReferencia)
	LEFT JOIN UnidadesMedida       UMC    ON (PP.idUMC            = UMC.idUnidad)
	LEFT JOIN Partes               P      ON (PP.idParte          = P.idParte)
	LEFT JOIN Partes_Clasificacion PC     ON (P.idTipo            = PC.idTipo)
	LEFT JOIN Paises               PO     ON (PP.idPaisOrigen     = PO.idPais)
	LEFT JOIN TIGIE                TG     ON (PP.idFraccion       = TG.idFraccion)
	LEFT JOIN Identificadores      IDEI   ON (PP.idIdentificador  = IDEI.idIdentificador)
	LEFT JOIN Identificadores      IDEII  ON (PP.idIdentificador2 = IDEII.idIdentificador)
	LEFT JOIN Identificadores      IDEIII ON (PP.idIdentificador3 = IDEIII.idIdentificador)
	LEFT JOIN UnidadesMedidaCOVE   UMCOVE ON (PP.idUnidadCOVE     = UMCOVE.idUnidadCOVE) 
	LEFT JOIN MetodosValoracion    VAL    ON (PP.idValoracion     = VAL.IdValoracion)
WHERE
	PG.Acuse      <> ''
	AND PG.Bacuse <> ''
	AND PG.Desaduanamiento <> ''