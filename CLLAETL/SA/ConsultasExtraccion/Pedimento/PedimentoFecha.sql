DECLARE @Extraccion TABLE
(

	idReferencia INT,
	DescImpresion VARCHAR(30),
	Fecha        DATETIME
) 

INSERT INTO @Extraccion
	SELECT
		EPF.idReferencia,
		EPF.DescImpresion,
		EPF.Fecha
	FROM BitacoraCargaSysExpertPedimento       BEP
		JOIN ExtraccionSysExpertPedimentoFecha EPF ON (BEP.idReferencia = EPF.idReferencia)
	
	DECLARE @PedimentoFecha TABLE
	(
		idReferencia          INT, 
		FechaEntrada          DATETIME, 
		FechaExtraccion       DATETIME, 
		FechaOriginal         DATETIME,
		FechaPago             DATETIME,
		FechaPresentacion DATETIME
	)
	INSERT INTO @PedimentoFecha
		SELECT 
			idReferencia
			,[ENTRADA]
 			,[EXTRACCION]
			,[ORIGINAL]
			,[PAGO]
			,[PRESENTACION]
		FROM @Extraccion
		PIVOT (
			MAX(Fecha)
			FOR DescImpresion  IN ([ENTRADA],[EXTRACCION],[ORIGINAL],[PAGO],[PRESENTACION])
		) AS PIVOTED
		ORDER BY 
			idReferencia

	SELECT 
		idReferencia AS idReferencia
		,MAX(FechaEntrada) AS FechaEntrada
		,MAX(FechaExtraccion) AS FechaExtraccion
		,MAX(FechaOriginal) AS FechaOriginal
		,MAX(FechaPago) AS FechaPago
	    ,MAX(DAY(FechaPago)) AS FechaPagoDia
		,MAX(MONTH(FechaPago)) AS FechaPagoMes
		,MAX(YEAR(FechaPago)) AS FechaPagoAnio
		,MAX(DATEPART(QUARTER, FechaPago)) AS FechaPagoTrimestre
		,MAX(CASE 
			WHEN DATEPART(quarter, FechaPago) >= 3 THEN 
				2 
			ELSE 
				1 
		END) AS FechaPagoSemestre
		,MAX(FechaPresentacion) AS FechaPresentacion
	FROM @PedimentoFecha
	GROUP BY
		idReferencia