SELECT PPIIC.[idReferencia] AS OrigenidReferencia
      ,[idPedParteII] AS OrigenidPedParteII
      ,[idPedPIIContenedores] AS OrigenidPedPIIContenedores
      ,[NumeroContenedor] AS ContenedorNumero
	  ,[Clave] AS ContenedorClave 
      ,[Descripcion] AS ContenedorDescripcion      
      ,[Candado]
      ,[Color]
  FROM BitacoraCargaSysExpertPedimento                         BCP
	JOIN [dbo].[ExtraccionSysExpertPedimentoParteIIContenedor] PPIIC ON (BCP.idReferencia = PPIIC.idReferencia)
