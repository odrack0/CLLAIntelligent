SELECT [idEstatusGuias] 
      ,[idGuia]
      ,CEG.[idClavesEstatusGuias]
	  ,CEG.ClaveEstatusGuias
	  ,CEG.DescripcionEstatus
	  ,CEG.idAgencia
      ,[Fecha]
      ,[Hora]
      ,[Observaciones]
  FROM [dbo].[EstatusGuias]  EG
	JOIN ClavesEstatusGuias  CEG ON (EG.idClavesEstatusGuias = CEG.idClavesEstatusGuias)
WHERE
	idEstatusGuias > (SELECT BES.idEstatusGuias  FROM BitacoraExtraccionSysExpert BES)


