DECLARE @PartesFraccionesSLAM TABLE 
(
	Aduana             NVARCHAR(250), 	
	OrigenClienteClave NVARCHAR(250),
	NoParte            NVARCHAR(250), 
	Desccripcion       NVARCHAR(250),
	PaisOrigen         NVARCHAR(255),
	UMC                NVARCHAR(255),
	Fraccion           NVARCHAR(50)	
)
INSERT INTO @PartesFraccionesSLAM
	SELECT 
		 '240' AS Aduana
		 ,[ClienteClave] AS OrigenClienteClave
		  ,[NoParte]     
		  ,[DescripcionEsp] AS Descripcion
		  ,[PaisOrigenDestino]
		  ,[UMC]
		  ,LEFT(TRIM(STR([Fraccion], 25, 5)), 8)
	  FROM [dbo].[ExtraccionMaterialDespachadoLaredo]

UPDATE @PartesFraccionesSLAM 
	SET Fraccion = LEFT(Fraccion, 4) + '.' + SUBSTRING(Fraccion, 5, 2) + '.' + RIGHT(Fraccion, 2)
