--SELECT DISTINCT idReferencia FROM  ExtraccionSysExpertPedimentoContribucion --566, 137
--CLAVES
DECLARE @PedimentoContribucion TABLE 
(
	[idPedContribuciones] [int] NULL,
	[idReferencia] [int] NULL,
	[idContribucion] [int] NULL,
	[ClaveContribucion] [smallint] NULL,
	[ct_Descripcion] [varchar](120) NULL,
	[Abreviacion] [varchar](10) NULL,
	[PorcentajeAplicar] [numeric](9, 5) NULL,
	[idFormaPago] [int] NULL,
	[ClaveFormaPago] [smallint] NULL,
	[fp_Descripcion] [varchar](35) NULL,
	[ImporteContribucion] [numeric](12, 0) NULL,
	[idTipoTasa] [int] NULL,
	[TipoTasa] [smallint] NULL,
	[TasaDescripcion] [varchar](51) NULL,
	[TasaContribucion] [numeric](12, 5) NULL,
	[CaracteristicasCalculo] [tinyint] NULL
)

 INSERT INTO @PedimentoContribucion	
	SELECT
		*
	FROM BitacoraCargaSysExpertPedimento               BCP
		JOIN ExtraccionSysExpertPedimentoContribucion  PC   ON (BCP.idReferencia = PC.idReferencia)
	WHERE
		BCP.FechaCargaPedimentoContribucion IS NULL

DECLARE @ContribucionesClavesPivot TABLE
(
	idReferencia INT, 
	[CNT]        SMALLINT, 
	[DTA]        SMALLINT, 
	[ECI]        SMALLINT, 
	[IVA/PRV]    SMALLINT, 
	[MULT.]      SMALLINT,
	[PRV]        SMALLINT,
	[REC.]       SMALLINT,
	[RT]         SMALLINT

)
INSERT INTO @ContribucionesClavesPivot
	SELECT 
		idReferencia
		,[CNT]
		,[DTA]
		,[ECI]
		,[IVA/PRV]
		,[MULT.]
		,[PRV]
		,[REC.]
		,[RT]
	FROM @PedimentoContribucion
	PIVOT (
		MAX(ClaveContribucion)
		FOR Abreviacion  IN ([CNT],[DTA],[ECI],[IVA/PRV],[MULT.],[PRV],[REC.],[RT])
	) AS PIVOTED

DECLARE @ContribucionesClaves TABLE
(
	idReferencia INT, 
	[CNT]        SMALLINT, 
	[DTA]        SMALLINT, 
	[ECI]        SMALLINT, 
	[IVA/PRV]    SMALLINT, 
	[MULT.]      SMALLINT,
	[PRV]        SMALLINT,
	[REC.]       SMALLINT,
	[RT]         SMALLINT

)
INSERT INTO @ContribucionesClaves
	SELECT 
		idReferencia
		,MAX([CNT])
		,MAX([DTA])
		,MAX([ECI])
		,MAX([IVA/PRV])
		,MAX([MULT.])
		,MAX([PRV])
		,MAX([REC.])
		,MAX([RT])
	FROM @ContribucionesClavesPivot 
	GROUP BY
		idReferencia
	
--DESCRIPCIONES
DECLARE @ContribucionesDescripcionesPivot TABLE
(
	idReferencia INT, 
	[CNT]        VARCHAR(120), 
	[DTA]        VARCHAR(120), 
	[ECI]        VARCHAR(120), 
	[IVA/PRV]    VARCHAR(120), 
	[MULT.]      VARCHAR(120),
	[PRV]        VARCHAR(120),
	[REC.]       VARCHAR(120),
	[RT]         VARCHAR(120)

)
INSERT INTO @ContribucionesDescripcionesPivot
	SELECT 
		idReferencia
		,[CNT]
		,[DTA]
		,[ECI]
		,[IVA/PRV]
		,[MULT.]
		,[PRV]
		,[REC.]
		,[RT]
	FROM @PedimentoContribucion
	PIVOT (
		MAX(ct_Descripcion)
		FOR Abreviacion  IN ([CNT],[DTA],[ECI],[IVA/PRV],[MULT.],[PRV],[REC.],[RT])
	) AS PIVOTED

DECLARE @ContribucionesDescripciones TABLE
(
	idReferencia INT, 
	[CNT]        VARCHAR(120), 
	[DTA]        VARCHAR(120), 
	[ECI]        VARCHAR(120), 
	[IVA/PRV]    VARCHAR(120), 
	[MULT.]      VARCHAR(120),
	[PRV]        VARCHAR(120),
	[REC.]       VARCHAR(120),
	[RT]         VARCHAR(120)

)

INSERT INTO @ContribucionesDescripciones
	SELECT 
		idReferencia
		,MAX([CNT])
		,MAX([DTA])
		,MAX([ECI])
		,MAX([IVA/PRV])
		,MAX([MULT.])
		,MAX([PRV])
		,MAX([REC.])
		,MAX([RT])
	FROM @ContribucionesDescripcionesPivot 
	GROUP BY
		idReferencia
	
--PORCENTAJES
DECLARE @ContribucionesPorcentajesPivot TABLE
(
	idReferencia INT, 
	[CNT]        NUMERIC(9, 5), 
	[DTA]        NUMERIC(9, 5), 
	[ECI]        NUMERIC(9, 5), 
	[IVA/PRV]    NUMERIC(9, 5), 
	[MULT.]      NUMERIC(9, 5),
	[PRV]        NUMERIC(9, 5),
	[REC.]       NUMERIC(9, 5),
	[RT]         NUMERIC(9, 5)

)
INSERT INTO @ContribucionesPorcentajesPivot
	SELECT 
		idReferencia
		,[CNT]
		,[DTA]
		,[ECI]
		,[IVA/PRV]
		,[MULT.]
		,[PRV]
		,[REC.]
		,[RT]
	FROM @PedimentoContribucion
	PIVOT (
		MAX(PorcentajeAplicar)
		FOR Abreviacion  IN ([CNT],[DTA],[ECI],[IVA/PRV],[MULT.],[PRV],[REC.],[RT])
	) AS PIVOTED

DECLARE @ContribucionesPorcentajes TABLE
(
	idReferencia INT, 
	[CNT]        NUMERIC(9, 5), 
	[DTA]        NUMERIC(9, 5), 
	[ECI]        NUMERIC(9, 5), 
	[IVA/PRV]    NUMERIC(9, 5), 
	[MULT.]      NUMERIC(9, 5),
	[PRV]        NUMERIC(9, 5),
	[REC.]       NUMERIC(9, 5),
	[RT]         NUMERIC(9, 5)

)
INSERT INTO @ContribucionesPorcentajes
	SELECT 
		idReferencia
		,MAX([CNT])
		,MAX([DTA])
		,MAX([ECI])
		,MAX([IVA/PRV])
		,MAX([MULT.])
		,MAX([PRV])
		,MAX([REC.])
		,MAX([RT])
	FROM @ContribucionesPorcentajesPivot 
	GROUP BY
		idReferencia

--FORMAPAGOCLAVES
DECLARE @ContribucionesFormaPagoClavesPivot TABLE
(
	idReferencia INT, 
	[CNT]        SMALLINT, 
	[DTA]        SMALLINT, 
	[ECI]        SMALLINT, 
	[IVA/PRV]    SMALLINT, 
	[MULT.]      SMALLINT,
	[PRV]        SMALLINT,
	[REC.]       SMALLINT,
	[RT]         SMALLINT

)
INSERT INTO @ContribucionesFormaPagoClavesPivot
	SELECT 
		idReferencia
		,[CNT]
		,[DTA]
		,[ECI]
		,[IVA/PRV]
		,[MULT.]
		,[PRV]
		,[REC.]
		,[RT]
	FROM @PedimentoContribucion
	PIVOT (
		MAX(ClaveFormaPago)
		FOR Abreviacion  IN ([CNT],[DTA],[ECI],[IVA/PRV],[MULT.],[PRV],[REC.],[RT])
	) AS PIVOTED

DECLARE @ContribucionesFormaPagoClaves TABLE
(
	idReferencia INT, 
	[CNT]        SMALLINT, 
	[DTA]        SMALLINT, 
	[ECI]        SMALLINT, 
	[IVA/PRV]    SMALLINT, 
	[MULT.]      SMALLINT,
	[PRV]        SMALLINT,
	[REC.]       SMALLINT,
	[RT]         SMALLINT

)
INSERT INTO @ContribucionesFormaPagoClaves
	SELECT 
		idReferencia
		,MAX([CNT])
		,MAX([DTA])
		,MAX([ECI])
		,MAX([IVA/PRV])
		,MAX([MULT.])
		,MAX([PRV])
		,MAX([REC.])
		,MAX([RT])
	FROM @ContribucionesFormaPagoClavesPivot 
	GROUP BY
		idReferencia
--FORMAPAGODESCRIPCIONES
DECLARE @ContribucionesFormaPagoDescripcionPivot TABLE
(
	idReferencia INT, 
	[CNT]        VARCHAR(35), 
	[DTA]        VARCHAR(35), 
	[ECI]        VARCHAR(35), 
	[IVA/PRV]    VARCHAR(35), 
	[MULT.]      VARCHAR(35),
	[PRV]        VARCHAR(35),
	[REC.]       VARCHAR(35),
	[RT]         VARCHAR(35)

)
INSERT INTO @ContribucionesFormaPagoDescripcionPivot
	SELECT 
		idReferencia
		,[CNT]
		,[DTA]
		,[ECI]
		,[IVA/PRV]
		,[MULT.]
		,[PRV]
		,[REC.]
		,[RT]
	FROM @PedimentoContribucion
	PIVOT (
		MAX(fp_Descripcion)
		FOR Abreviacion  IN ([CNT],[DTA],[ECI],[IVA/PRV],[MULT.],[PRV],[REC.],[RT])
	) AS PIVOTED

DECLARE @ContribucionesFormaPagoDescripcion TABLE
(
	idReferencia INT, 
	[CNT]        VARCHAR(35), 
	[DTA]        VARCHAR(35), 
	[ECI]        VARCHAR(35), 
	[IVA/PRV]    VARCHAR(35), 
	[MULT.]      VARCHAR(35),
	[PRV]        VARCHAR(35),
	[REC.]       VARCHAR(35),
	[RT]         VARCHAR(35)

)
INSERT INTO @ContribucionesFormaPagoDescripcion
	SELECT 
		idReferencia
		,MAX([CNT])
		,MAX([DTA])
		,MAX([ECI])
		,MAX([IVA/PRV])
		,MAX([MULT.])
		,MAX([PRV])
		,MAX([REC.])
		,MAX([RT])
	FROM @ContribucionesFormaPagoDescripcionPivot 
	GROUP BY
		idReferencia
--IMPORTES
DECLARE @ContribucionesImportesPivot TABLE
(
	idReferencia INT, 
	[CNT]        NUMERIC(12), 
	[DTA]        NUMERIC(12), 
	[ECI]        NUMERIC(12), 
	[IVA/PRV]    NUMERIC(12), 
	[MULT.]      NUMERIC(12),
	[PRV]        NUMERIC(12),
	[REC.]       NUMERIC(12),
	[RT]         NUMERIC(12)

)
INSERT INTO @ContribucionesImportesPivot
	SELECT 
		idReferencia
		,[CNT]
		,[DTA]
		,[ECI]
		,[IVA/PRV]
		,[MULT.]
		,[PRV]
		,[REC.]
		,[RT]
	FROM @PedimentoContribucion
	PIVOT (
		MAX(ImporteContribucion)
		FOR Abreviacion  IN ([CNT],[DTA],[ECI],[IVA/PRV],[MULT.],[PRV],[REC.],[RT])
	) AS PIVOTED

DECLARE @ContribucionesImportes TABLE
(
	idReferencia INT, 
	[CNT]        NUMERIC(12), 
	[DTA]        NUMERIC(12), 
	[ECI]        NUMERIC(12), 
	[IVA/PRV]    NUMERIC(12), 
	[MULT.]      NUMERIC(12),
	[PRV]        NUMERIC(12),
	[REC.]       NUMERIC(12),
	[RT]         NUMERIC(12)

)
INSERT INTO @ContribucionesImportes
	SELECT 
		idReferencia
		,MAX([CNT])
		,MAX([DTA])
		,MAX([ECI])
		,MAX([IVA/PRV])
		,MAX([MULT.])
		,MAX([PRV])
		,MAX([REC.])
		,MAX([RT])
	FROM @ContribucionesImportesPivot 
	GROUP BY
		idReferencia

--TIPOTASAS
DECLARE @ContribucionesTiposTasasPivot TABLE
(
	idReferencia INT, 
	[CNT]        SMALLINT, 
	[DTA]        SMALLINT, 
	[ECI]        SMALLINT, 
	[IVA/PRV]    SMALLINT, 
	[MULT.]      SMALLINT,
	[PRV]        SMALLINT,
	[REC.]       SMALLINT,
	[RT]         SMALLINT

)

INSERT INTO @ContribucionesTiposTasasPivot
	SELECT 
		idReferencia
		,[CNT]
		,[DTA]
		,[ECI]
		,[IVA/PRV]
		,[MULT.]
		,[PRV]
		,[REC.]
		,[RT]
	FROM @PedimentoContribucion
	PIVOT (
		MAX(TipoTasa)
		FOR Abreviacion  IN ([CNT],[DTA],[ECI],[IVA/PRV],[MULT.],[PRV],[REC.],[RT])
	) AS PIVOTED

DECLARE @ContribucionesTiposTasas TABLE
(
	idReferencia INT, 
	[CNT]        SMALLINT, 
	[DTA]        SMALLINT, 
	[ECI]        SMALLINT, 
	[IVA/PRV]    SMALLINT, 
	[MULT.]      SMALLINT,
	[PRV]        SMALLINT,
	[REC.]       SMALLINT,
	[RT]         SMALLINT

)
INSERT INTO @ContribucionesTiposTasas
	SELECT 
		idReferencia
		,MAX([CNT])
		,MAX([DTA])
		,MAX([ECI])
		,MAX([IVA/PRV])
		,MAX([MULT.])
		,MAX([PRV])
		,MAX([REC.])
		,MAX([RT])
	FROM @ContribucionesTiposTasasPivot 
	GROUP BY
		idReferencia

--TasaDescripcion
DECLARE @ContribucionesTasaDecripcionPivot TABLE
(
	idReferencia INT, 
	[CNT]        VARCHAR(51), 
	[DTA]        VARCHAR(51), 
	[ECI]        VARCHAR(51), 
	[IVA/PRV]    VARCHAR(51), 
	[MULT.]      VARCHAR(51),
	[PRV]        VARCHAR(51),
	[REC.]       VARCHAR(51),
	[RT]         VARCHAR(51)

)

INSERT INTO @ContribucionesTasaDecripcionPivot
	SELECT 
		idReferencia
		,[CNT]
		,[DTA]
		,[ECI]
		,[IVA/PRV]
		,[MULT.]
		,[PRV]
		,[REC.]
		,[RT]
	FROM @PedimentoContribucion
	PIVOT (
		MAX(TasaDescripcion)
		FOR Abreviacion  IN ([CNT],[DTA],[ECI],[IVA/PRV],[MULT.],[PRV],[REC.],[RT])
	) AS PIVOTED

DECLARE @ContribucionesTasaDescripcion TABLE
(
	idReferencia INT, 
	[CNT]        VARCHAR(51), 
	[DTA]        VARCHAR(51), 
	[ECI]        VARCHAR(51), 
	[IVA/PRV]    VARCHAR(51), 
	[MULT.]      VARCHAR(51),
	[PRV]        VARCHAR(51),
	[REC.]       VARCHAR(51),
	[RT]         VARCHAR(51)

)
INSERT INTO @ContribucionesTasaDescripcion
	SELECT 
		idReferencia
		,MAX([CNT])
		,MAX([DTA])
		,MAX([ECI])
		,MAX([IVA/PRV])
		,MAX([MULT.])
		,MAX([PRV])
		,MAX([REC.])
		,MAX([RT])
	FROM @ContribucionesTasaDecripcionPivot 
	GROUP BY
		idReferencia
	
--TasaContribucion
DECLARE @ContribucionesTasaContribucionPivot TABLE
(
	idReferencia INT, 
	[CNT]        VARCHAR(51), 
	[DTA]        VARCHAR(51), 
	[ECI]        VARCHAR(51), 
	[IVA/PRV]    VARCHAR(51), 
	[MULT.]      VARCHAR(51),
	[PRV]        VARCHAR(51),
	[REC.]       VARCHAR(51),
	[RT]         VARCHAR(51)

)

INSERT INTO @ContribucionesTasaContribucionPivot
	SELECT 
		idReferencia
		,[CNT]
		,[DTA]
		,[ECI]
		,[IVA/PRV]
		,[MULT.]
		,[PRV]
		,[REC.]
		,[RT]
	FROM @PedimentoContribucion
	PIVOT (
		MAX(TasaContribucion)
		FOR Abreviacion  IN ([CNT],[DTA],[ECI],[IVA/PRV],[MULT.],[PRV],[REC.],[RT])
	) AS PIVOTED

DECLARE @ContribucionesTasaContribucion TABLE
(
	idReferencia INT, 
	[CNT]        VARCHAR(51), 
	[DTA]        VARCHAR(51), 
	[ECI]        VARCHAR(51), 
	[IVA/PRV]    VARCHAR(51), 
	[MULT.]      VARCHAR(51),
	[PRV]        VARCHAR(51),
	[REC.]       VARCHAR(51),
	[RT]         VARCHAR(51)

)
INSERT INTO @ContribucionesTasaContribucion
	SELECT 
		idReferencia
		,MAX([CNT])
		,MAX([DTA])
		,MAX([ECI])
		,MAX([IVA/PRV])
		,MAX([MULT.])
		,MAX([PRV])
		,MAX([REC.])
		,MAX([RT])
	FROM @ContribucionesTasaContribucionPivot 
	GROUP BY
		idReferencia
--INSERT INTO TransformacionSysExpertPedimentoContribucion
	SELECT 
		CC.idReferencia,
		CC.DTA,
		CD.DTA,
		CP.DTA,
		CFPC.DTA,
		CFPD.DTA,
		CI.DTA,
		CTT.DTA,
		CTD.DTA,
		CTC.DTA,	
	
		CC.[REC.],
		CD.[REC.],
		CP.[REC.],
		CFPC.[REC.],
		CFPD.[REC.],
		CI.[REC.],
		CTT.[REC.],
		CTD.[REC.],
		CTC.[REC.],

		CC.[MULT.],
		CD.[MULT.],
		CP.[MULT.],
		CFPC.[MULT.],
		CFPD.[MULT.],
		CI.[MULT.],
		CTT.[MULT.],
		CTD.[MULT.],
		CTC.[MULT.],

		CC.[RT],
		CD.[RT],
		CP.[RT],
		CFPC.[RT],
		CFPD.[RT],
		CI.[RT],
		CTT.[RT],
		CTD.[RT],
		CTC.[RT],
	
		CC.[PRV],
		CD.[PRV],
		CP.[PRV],
		CFPC.[PRV],
		CFPD.[PRV],
		CI.[PRV],
		CTT.[PRV],
		CTD.[PRV],
		CTC.[PRV],

		CC.[ECI],
		CD.[ECI],
		CP.[ECI],
		CFPC.[ECI],
		CFPD.[ECI],
		CI.[ECI],
		CTT.[ECI],
		CTD.[ECI],
		CTC.[ECI],

		CC.[CNT],
		CD.[CNT],
		CP.[CNT],
		CFPC.[CNT],
		CFPD.[CNT],
		CI.[CNT],
		CTT.[CNT],
		CTD.[CNT],
		CTC.[CNT],

		CC.[IVA/PRV],
		CD.[IVA/PRV],
		CP.[IVA/PRV],
		CFPC.[IVA/PRV],
		CFPD.[IVA/PRV],
		CI.[IVA/PRV],
		CTT.[IVA/PRV],
		CTD.[IVA/PRV],
		CTC.[IVA/PRV]
	FROM @ContribucionesClaves CC
		JOIN @ContribucionesDescripciones        CD   ON (CC.idReferencia   = CD.idReferencia)
		JOIN @ContribucionesPorcentajes          CP   ON (CD.idReferencia   = CP.idReferencia)
		JOIN @ContribucionesFormaPagoClaves      CFPC ON (CP.idReferencia   = CFPC.idReferencia)
		JOIN @ContribucionesFormaPagoDescripcion CFPD ON (CFPC.idReferencia = CFPD.idReferencia)
		JOIN @ContribucionesImportes             CI   ON (CFPD.idReferencia = CI.idReferencia)
		JOIN @ContribucionesTiposTasas           CTT  ON (CI.idReferencia   = CTT.idReferencia)
		JOIN @ContribucionesTasaDescripcion      CTD  ON (CTT.idReferencia  = CTD.idReferencia)
		JOIN @ContribucionesTasaContribucion     CTC  ON (CTD.idReferencia  = CTC.idReferencia)


