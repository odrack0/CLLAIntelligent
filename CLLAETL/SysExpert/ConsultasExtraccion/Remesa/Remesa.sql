SELECT [idRemesa]
      ,[idReferencia]
      ,[NumeroRemesa]
      ,[FechaOperacion]
      ,PR.[idTipoCambio]
      ,[ArchivoValidacion]
      ,PR.[Firma]
      ,[Desaduanamiento]
      ,[DesaduanaFecha]
      ,[idUsuarioDesaduana]
	  ,U.USU_NAME
      ,[Aleatorio]
      ,[Observaciones]
      ,PR.[idTramitador]
      ,T.Nombre
	  ,PR.[idPrevalidador]
	  ,P.ClavePrevalidador
	  ,P.NombrePrevalidador
      ,[Contenedor]
      ,PR.[idTransportista]
      ,[TipoMedioTransporte]
      ,[IdentificacionTransporte]
      ,[CantidadGuias]
      ,[Contenedor2]+
      ,[MarcasNumeros]
      ,PR.[idRecinto]
  FROM [dbo].[Ped_Remesas]     PR
	LEFT JOIN TipoCambio       TC    ON (PR.idTipoCambio        = TC.idTipoCambio)
	LEFT JOIN USUARIOS         U     ON (PR.idUsuarioDesaduana  = U.PK_USUARIO)
	LEFT JOIN Tramitadores     T     ON (PR.idTramitador        = T.idTramitador)
	LEFT JOIN Prevalidadores   P     ON (PR.idPrevalidador      = P.idPrevalidador)
	LEFT JOIN Transportistas   TRANS ON (PR.idTransportista     = TRANS.idTransportista)
	LEFT JOIN RecintosFiscales RF    ON (PR.idRecinto           = RF.idRecinto)
WHERE	
	PR.Desaduanamiento <> ''