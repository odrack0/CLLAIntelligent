SELECT 
	ASINGFAC.idReferencia OrigenIdReferencia
    ,PEDFACTURAS.idFactura [OrigenIdFactura]
    ,PEDGUIAS.idGuia [OrigenIdGuia]
    ,PEDGUIAS.GuiaMaster [GuiaGuiaMaster]
    ,PEDGUIAS.GuiaHouse [GuiaGuiaHouse]
    ,PEDGUIAS.Fecha [GuiaFecha]
    ,PEDGUIASTRM.Clave [GuiaTransportMasterClave]
    ,PEDGUIASTRM.Nombre [GuiaTransportMasterNombre]
    ,PEDGUIASTRH.Clave [GuiaTransportHouseClave]
    ,PEDGUIASTRH.Nombre [GuiaTransportHouserNombre]
    ,PEDGUIAS.Bultos [GuiaBultos]
    ,PEDGUIAS.Arribo [GuiaArribo]
    ,PEDGUIAS.idBultos [GuiaidBultos]
    ,PEDGUIAS.IdenTranspoMaster [GuiaIdenTranspoMaster]
    ,PEDGUIAS.IdenTranspoHouse [GuiaIdenTranspoHouse]
    ,PEDGUIASPTM.ClaveM3 [GuiaPaisTransporMasterClaveM3]
    ,PEDGUIASPTM.NombrePais [GuiaPaisTransporMasterNombrePais]
    ,PEDGUIAS.idTransportHouse [GuiaidPaisTransporHouse]
    ,PEDGUIASPTH.ClaveM3 [GuiaPaisTransporHouseClaveM3]
    ,PEDGUIASPTH.NombrePais [GuiaPaisTransporHouseNombrePais]
    ,PEDGUIASOG.Clave [GuiaGuiaObservacionClave]
    ,PEDGUIASPG.Clave [GuiaPrioridadClave]
    ,PEDGUIASPG.Prioridad [GuiaPrioridad]
    ,PEDGUIAS.Folio [GuiaFolio]
	,PEDFACTURAS.NumeroFactura [NumeroFactura]
	,COVEGRAL.eDocument AS COVEEDocument
	,COVEGRAL.FechaExpedicion AS COVEFecha
    ,PEDFACTURAS.FechaFactura [FechaFactura]
    ,PEDFACTURAS.FechaEntPres [FechaEntPres]
    ,PEDFACTURAS.idIncoterm [idIncoterm]
    ,PEDFACINCO.Incoterm [Incoterm]
    ,PEDFACINCO.inc_Descripcion [IncotermDescripcion]
    ,PEDFACPAISM.ClaveM3 [PaisMonedaClaveM3]
    ,PEDFACPAISM.NombrePais [PaisMonedaNombrePais]
    ,PEDFACPR.ClaveProveedor [ProveedorClaveProveedor]
    ,PEDFACPR.RazonSocial [ProveedorRazonSocial]
    ,PEDFACPR.TaxNumber [ProveedorTaxNumber]
    ,PEDFACPR.RFC [ProveedorRFC]
    ,PEDFACPR.Calle [ProveedorCalle]
    ,PEDFACPR.NumeroExterior [ProveedorNumeroExterior]
    ,PEDFACPR.NumeroInterior [ProveedorNumeroInterior]
    ,PEDFACPR.Colonia [ProveedorColonia]
    ,PEDFACPR.CodigoPostal [ProveedorCodigoPostal]
    ,PEDFACPR.Ciudad [ProveedorCiudad]
    ,PEDFACPREF.ClaveEntidad [ProveedorEntidadClaveEntidad]
    ,PEDFACPREF.EntidadFederativa [ProveedorEntidadEntidadFederativa]
    ,PEDFACPRPAIS.ClaveM3 [ProveedorPaisClaveM3]
    ,PEDFACPRPAIS.NombrePais [ProveedorPaisNombrePais]
    ,PEDFACPR.email [Proveedoremail]
    ,PEDFACPR.ClaveExternaExport [ProveedorClaveExternaExport]
    ,PEDFACDES.ClaveProveedor [DestinatarioClaveProveedor]
    ,PEDFACDES.RazonSocial [DestinatarioRazonSocial]
    ,PEDFACDES.TaxNumber [DestinatarioTaxNumber]
    ,PEDFACDES.RFC [DestinatarioRFC]
    ,PEDFACDES.CURP [DestinatarioCURP]
    ,PEDFACDES.Calle [DestinatarioCalle]
    ,PEDFACDES.NumeroExterior [DestinatarioNumeroExterior]
    ,PEDFACDES.NumeroInterior [DestinatarioNumeroInterior]
    ,PEDFACDES.Colonia [DestinatarioColonia]
    ,PEDFACDES.CodigoPostal [DestinatarioCodigoPostal]
    ,PEDFACDES.Ciudad [DestinatarioCiudad]
    ,PEDFACDESEF.ClaveEntidad [DestinatarioEntidadClaveEntidad]
    ,PEDFACDESEF.EntidadFederativa [DestinatarioEntidadEntidadFederativa]
    ,PEDFACDESPAIS.ClaveM3 [DestinatarioPaisClaveM3]
    ,PEDFACDESPAIS.NombrePais [DestinatarioPaisNombrePais]
    ,PEDFACDES.email [Destinatarioemail]
    ,PEDFACDES.NumExportadorConfiable [DestinatarioNumExportadorConfiable]
    ,PEDFACDES.ClaveExternaExport [DestinatarioClaveExternaExport]
    ,PEDFACDES.NumOperadorEconomico [DestinatarioNumOperadorEconomico]
    ,PEDFACTURAS.FletesUSD [FletesUSD]
    ,PEDFACTURAS.SegurosUSD [SegurosUSD]
    ,PEDFACTURAS.EmbalajeUSD [EmbalajeUSD]
    ,PEDFACTURAS.OtrosIncrementUSD [OtrosIncrementUSD]
    ,PEDFACMV.ClaveValoracion [ValoracionClaveValoracion]
    ,PEDFACMV.mv_Descripcion [Valoracionmv_Descripcion]
    ,PEDFACTURAS.P_O [P_O]
    ,PEDFACTURAS.Notas [Notas]
    ,PEDFACTURAS.TipoOperacion [TipoOperacion]
    ,PEDFACTURAS.ImporteUSD [ImporteUSD]
    ,PEDFACTURAS.ImporteME [ImporteME]
    ,PEDFACTURAS.ValorMciaME [ValorMciaME]
    ,PEDFACTURAS.ValorMciaUSD [ValorMciaUSD]
    ,PEDFACTURAS.ValorAgregadoUSD [ValorAgregadoUSD]
    ,PEDFACTURAS.PesoBruto [PesoBruto]
    ,PEDFACMONEQ.Fecha [EquivalenciaFecha]
    ,PEDFACMONEQ.Equivalencia [Equivalencia]
    ,PEDFACESTFAC.Clave [EstatusClave]
    ,PEDFACESTFAC.Estatus [EstatusEstatus]
    ,PEDFACPAISPROV.ClaveM3 [PaisProveedorPaisClaveM3]
    ,PEDFACPAISPROV.NombrePais [PaisProveedorPaisNombrePais]
    ,PEDFACPAISPROC.ClaveM3 [PaisProcedenciaPaisClaveM3]
    ,PEDFACPAISPROC.NombrePais [PaisProcedenciaPaisNombrePais]
    ,PEDFACTIPOSVIN.Clave [VinculacionClave]
    ,PEDFACTIPOSVIN.Descripcion [VinculacionDescripcion]
    ,PEDFACTURAS.Subdivision [Subdivision]
    ,PEDFACCENTROCOS.CentroCosto [CentroCostoCentroCosto]
    ,PEDFACCENTROCOS.Ejecutivo [CentroCostoEjecutivo]
    ,PEDFACTURAS.fungeCertificado [fungeCertificado]
    ,PEDFACTURAS.FletesME [FletesME]
    ,PEDFACTURAS.SegurosME [SegurosME]
    ,PEDFACTURAS.EmbalajeME [EmbalajeME]
    ,PEDFACTURAS.OtrosIncrementME [OtrosIncrementME]
    ,PEDFACPAISMONFL.ClaveM3 [PaisMonFletesClaveM3]
    ,PEDFACPAISMONFL.NombrePais [PaisMonFletesNombrePais]
    ,PEDFACPAISMONFL.ClaveMoneda [PaisMonFletesClaveMoneda]
    ,PEDFACPAISMONFL.NombreMoneda [PaisMonFletesNombreMoneda]
    ,PEDFACPAISMONSE.ClaveM3 [PaisMonSegurosClaveM3]
    ,PEDFACPAISMONSE.NombrePais [PaisMonSegurosNombrePais]
    ,PEDFACPAISMONSE.ClaveMoneda [PaisMonSegurosClaveMoneda]
    ,PEDFACPAISMONSE.NombreMoneda [PaisMonSegurosNombreMoneda]
    ,PEDFACPAISMONEM.ClaveM3 [PaisMonEmbalajeClaveM3]
    ,PEDFACPAISMONEM.NombrePais [PaisMonEmbalajeNombrePais]
    ,PEDFACPAISMONEM.ClaveMoneda [PaisMonEmbalajeClaveMoneda]
    ,PEDFACPAISMONEM.NombreMoneda [PaisMonEmbalajeNombreMoneda]
    ,PEDFACPAISMONOI.ClaveM3 [PaisMonOtrosIncrementClaveM3]
    ,PEDFACPAISMONOI.NombrePais [PaisMonOtrosIncrementNombrePais]
    ,PEDFACPAISMONOI.ClaveMoneda [PaisMonOtrosIncrementClaveMoneda]
    ,PEDFACPAISMONOI.NombreMoneda [PaisMonOtrosIncrementNombreMoneda]
    ,PEDFACTURAS.Notas2 [Notas2]
    ,PEDFACTURAS.Enajenacion [Enajenacion]
    ,PEDFACTURAS.FacturaOriginal [FacturaOriginal]
    ,PEDFACTURAS.CertificaOrigen [CertificaOrigen]
FROM BitacoraExtraccionSysExpertPedimento BEP
	JOIN AsignacionFacturas         ASINGFAC        WITH(NOLOCK) ON (BEP.idReferencia              = ASINGFAC.idReferencia)
	JOIN Ped_Facturas               PEDFACTURAS     WITH(NOLOCK) ON (ASINGFAC.idFactura            = PEDFACTURAS.idFactura)
	LEFT JOIN Ped_Guias             PEDGUIAS        WITH(NOLOCK) ON (PEDFACTURAS.idGuia            = PEDGUIAS.idGuia)
	LEFT JOIN COVEGeneral           COVEGRAL        WITH(NOLOCK) ON (PEDFACTURAS.idFactura         = COVEGRAL.idFactura)
	LEFT JOIN Transportistas        PEDGUIASTRM     WITH(NOLOCK) ON (PEDGUIAS.idTransportMaster    = PEDGUIASTRM.idTransportista)				
	LEFT JOIN Transportistas        PEDGUIASTRH     WITH(NOLOCK) ON (PEDGUIAS.idTransportHouse     = PEDGUIASTRH.idTransportista)				
	LEFT JOIN Paises                PEDGUIASPTM     WITH(NOLOCK) ON (PEDGUIAS.idPaisTransporMaster = PEDGUIASPTM.idPais)
	LEFT JOIN Paises                PEDGUIASPTH     WITH(NOLOCK) ON (PEDGUIAS.idTransportHouse     = PEDGUIASPTH.idPais)
	LEFT JOIN ObservacionesGuia     PEDGUIASOG      WITH(NOLOCK) ON (PEDGUIAS.idGuiaObservacion    = PEDGUIASOG.idGuiaObservacion)
	LEFT JOIN PrioridadesGuia       PEDGUIASPG      WITH(NOLOCK) ON (PEDGUIAS.idPrioridad          = PEDGUIASPG.idPrioridad)
	LEFT JOIN Incoterms             PEDFACINCO      WITH(NOLOCK) ON (PEDFACTURAS.idIncoterm        = PEDFACINCO.idIncoterm)
	LEFT JOIN Paises                PEDFACPAISM     WITH(NOLOCK) ON (PEDFACTURAS.idPaisMoneda      = PEDFACPAISM.idPais)
	LEFT JOIN Proveedores           PEDFACPR        WITH(NOLOCK) ON (PEDFACTURAS.idProveedor       = PEDFACPR.idProveedor)
	LEFT JOIN EntidadesFederativas  PEDFACPREF      WITH(NOLOCK) ON (PEDFACPR.idEntidad            = PEDFACPREF.idEntidad)
	LEFT JOIN Paises                PEDFACPRPAIS    WITH(NOLOCK) ON (PEDFACPR.idPais               = PEDFACPRPAIS.idPais)
	LEFT JOIN Proveedores           PEDFACDES       WITH(NOLOCK) ON (PEDFACTURAS.idDestinatario    = PEDFACDES.idProveedor)
	LEFT JOIN EntidadesFederativas  PEDFACDESEF     WITH(NOLOCK) ON (PEDFACDES.idEntidad           = PEDFACDESEF.idEntidad)
	LEFT JOIN Paises                PEDFACDESPAIS   WITH(NOLOCK) ON (PEDFACDES.idPais              = PEDFACDESPAIS.idPais)
	LEFT JOIN MetodosValoracion     PEDFACMV        WITH(NOLOCK) ON (PEDFACTURAS.idValoracion      = PEDFACMV.IdValoracion)
	LEFT JOIN Monedas_Equivalencias PEDFACMONEQ     WITH(NOLOCK) ON (PEDFACTURAS.idEquivalencia    = PEDFACMONEQ.idEquivalencia)
	LEFT JOIN EstatusFactura        PEDFACESTFAC    WITH(NOLOCK) ON (PEDFACTURAS.idEstatus         = PEDFACESTFAC.idEstatus)
	LEFT JOIN Paises                PEDFACPAISPROV  WITH(NOLOCK) ON (PEDFACTURAS.idPaisProveedor   = PEDFACPAISPROV.idPais)
	LEFT JOIN Paises                PEDFACPAISPROC  WITH(NOLOCK) ON (PEDFACTURAS.idPaisProcedencia = PEDFACPAISPROC.idPais)
	LEFT JOIN TiposVinculacion      PEDFACTIPOSVIN  WITH(NOLOCK) ON (PEDFACTURAS.idVinculacion     = PEDFACTIPOSVIN.idVinculacion)
	LEFT JOIN CentroCosto           PEDFACCENTROCOS WITH(NOLOCK) ON (PEDFACTURAS.idCentroCosto     = PEDFACCENTROCOS.idCentroCosto)
	LEFT JOIN Paises                PEDFACPAISMONSE WITH(NOLOCK) ON (PEDFACTURAS.idPaisMonSeguros  = PEDFACPAISMONSE.idPais)
	LEFT JOIN Paises                PEDFACPAISMONEM WITH(NOLOCK) ON (PEDFACTURAS.idPaisMonEmbalaje = PEDFACPAISMONEM.idPais)
	LEFT JOIN Paises                PEDFACPAISMONFL WITH(NOLOCK) ON (PEDFACTURAS.idPaisMonFletes   = PEDFACPAISMONFL.idPais)
	LEFT JOIN Paises                PEDFACPAISMONOI WITH(NOLOCK) ON (PEDFACTURAS.idPaisMonOtrosIncrement   = PEDFACPAISMONOI.idPais)
