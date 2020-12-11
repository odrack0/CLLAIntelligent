DECLARE @TIGIENICOS TABLE
(
	Fraccion2012       NVARCHAR(255),
	Fraccion2020       NVARCHAR(255),
	NICo               NVARCHAR(255),
	Descripcion        NVARCHAR(255),
	UnidadMedidaTarifa NVARCHAR(255),
	IGI                FLOAT,
	IGE                NVARCHAR(255),
	Observaciones      NVARCHAR(255)
)
INSERT INTO @TIGIENICOS
	SELECT 
		NICO.[TIGIE 2012],
		NICO.[TIGIE 2020_(SA 2017)],
		NICO.NICo,
		TIGIE.DESCIPCIÓN,
		TIGIE.[UNIDAD DE MEDIDA],
		TIGIE.IGI,
		TIGIE.IGE,
		TIGIE.OBSERVACIONES
	FROM ExtraccionProyectoNICOSSENICOS     NICO 
		JOIN ExtraccionProyectoNICOSSETIGIE TIGIE ON (NICO.[TIGIE 2020_(SA 2017)] = TIGIE.[FRACCIÓN ARANCELARIA]) 

DECLARE @PartesFraccionesSLAM TABLE 
(
	Aduana             VARCHAR(250), 	
	ClienteClave       VARCHAR(250),
	ClienteRazonSocial VARCHAR(250), 	
	NoParte            VARCHAR(250), 
	Desccripcion       VARCHAR(250),
	PaisOrigen         VARCHAR(255),
	UMC                VARCHAR(255),
	FraccionFloat      FLOAT,
	Fraccion           VARCHAR(50), 
	FraccionMascara    VARCHAR (10) 
	
)

INSERT INTO @PartesFraccionesSLAM
	SELECT DISTINCT
		'240' AS Aduana,
		TRIM(STR(ClienteClave, 25, 5)),
		Cliente,
		NoParte,
		DescripcionEsp,
		PaisOrigenDestino,
		UMC,
		Fraccion,
		LEFT(TRIM(STR(Fraccion, 25, 5)), 8),
		NULL
		
	FROM ExtraccionProyectoNICOSLAMClientesTIGIE
	WHERE
		Fraccion IS NOT NULL

UPDATE @PartesFraccionesSLAM 
	SET FraccionMascara = LEFT(Fraccion, 4) + '.' + SUBSTRING(Fraccion, 5, 2) + '.' + RIGHT(Fraccion, 2),
		ClienteClave = SUBSTRING(ClienteClave, 1, CHARINDEX('.', ClienteClave) - 1)



DECLARE @PartesFraccionesSysExpert TABLE 
(
	Aduana             VARCHAR(250), 	
	ClienteClave       VARCHAR(250),
	ClienteRazonSocial VARCHAR(250), 	
	NoParte            VARCHAR(250), 
	Desccripcion       VARCHAR(250),
	PaisOrigen         VARCHAR(255),
	UMC                VARCHAR(255),
	Fraccion           VARCHAR(10)
)

INSERT INTO @PartesFraccionesSysExpert
	SELECT DISTINCT
		P.AduanaClave,
		P.ClienteClaveCliente,
		P.ClienteRazonSocial,
		FP.ParteClave,
		FP.ParteDescripcion,
		FP.PaisOrigenClaveM3,
		FP.UnidadMedidaComercialAbreviacion,	
		PF.Fraccion
	FROM ExtraccionSysExpertPedimento                   P
		JOIN ExtraccionSysExpertPedimentoFecha          PFP ON (P.OrigenidReferencia = PFP.idReferencia AND PFP.idFecha = 2)
		JOIN ExtraccionSysExpertPedimentoFactura        F   ON (P.OrigenidReferencia = F.OrigenIdReferencia)
		JOIN ExtraccionSysExpertPedimentoFacturaPartida FP  ON (F.OrigenIdFactura    = FP.idFactura)
		JOIN ExtraccionSysExpertPedimentoFraccion       PF  ON (FP.idOrdenFraccion   = PF.idPedFraccion)		
	WHERE
		PFP.Fecha >= '20200101'


DECLARE @MaterialDespachado TABLE
(
	Aduana             NVARCHAR(250), 	
	ClienteClave       NVARCHAR(250),
	ClienteRazonSocial NVARCHAR(250), 	
	NoParte            NVARCHAR(250), 
	Desccripcion       NVARCHAR(250),
	PaisOrigen         NVARCHAR(255),
	UMC                NVARCHAR(255),
	Fraccion           NVARCHAR(10)	
)

INSERT INTO @MaterialDespachado
	SELECT
		Aduana,
		ClienteClave,
		ClienteRazonSocial,
		NoParte,
		Desccripcion,
		PaisOrigen,
		UMC,
		FraccionMascara
	FROM @PartesFraccionesSLAM

INSERT INTO @MaterialDespachado
	SELECT * FROM @PartesFraccionesSysExpert

SELECT
	MD.*,
	TIGIENICOS.*
FROM @MaterialDespachado MD
	JOIN  @TIGIENICOS    TIGIENICOS ON (MD.Fraccion = TIGIENICOS.Fraccion2012)