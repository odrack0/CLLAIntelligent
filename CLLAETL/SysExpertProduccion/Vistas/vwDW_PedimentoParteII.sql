USE [SysExpertBackup]

SELECT TOP 1000
		    NULL [IdPedimentoParteII]
           ,NULL [IdPedimento]
           ,PEDPARTII.idPedParteII [idPedParteII]
           ,PEDPARTII.idReferencia [idReferencia]
           ,PEDPARTII.NoParteII [NoParteII]
           ,PEDPARTII.DatosVehiculo [DatosVehiculo]
           ,PEDPARTII.idTramitador [idTramitador]
           ,PEDPARTIITRAM.Clave [TramitadorClave]
           ,PEDPARTIITRAM.Nombre [TramitadorNombre]
           ,PEDPARTII.idTransportista [idTransportista]
           ,PEDPARTIITRAN.Clave [TransportistaClave]
           ,PEDPARTIITRAN.Nombre [TransportistaNombre]
           ,PEDPARTIITRAN.RFC [TransportistaRFC]
           ,PEDPARTIITRAN.CAAT [TransportistaCAAT]
           ,PEDPARTII.idPaisTransportista [idPaisTransportista]
           ,PEDPARTIIPAIST.ClaveM3 [PaisTransportistaClaveM3]
           ,PEDPARTIIPAIST.NombrePais [PaisTransportistaNombrePais]
           ,PEDPARTII.IdentificacionTransporte [IdentificacionTransporte]
           ,PEDPARTII.Bultos [Bultos]
           ,PEDPARTII.esAGranel [esAGranel]
           ,PEDPARTII.CantidadGuias [CantidadGuias]
           ,PEDPARTII.NIU [NIU]
           ,PEDPARTII.Desaduanamiento [Desaduanamiento]
           ,PEDPARTII.FechaDesaduanamiento [FechaDesaduanamiento]
           ,PEDPARTII.HoraDesaduanamiento [HoraDesaduanamiento]
FROM Ped_PartesII PEDPARTII
	LEFt JOIN Tramitadores        PEDPARTIITRAM  WITH(NOLOCK) ON (PEDPARTII.idTramitador        = PEDPARTIITRAM.idTramitador)
	LEFT JOIN Transportistas      PEDPARTIITRAN  WITH(NOLOCK) ON (PEDPARTII.idTransportista     = PEDPARTIITRAN.idTransportista)
	LEFT JOIN Paises              PEDPARTIIPAIST WITH(NOLOCK) ON (PEDPARTII.idPaisTransportista = PEDPARTIIPAIST.idPais)
