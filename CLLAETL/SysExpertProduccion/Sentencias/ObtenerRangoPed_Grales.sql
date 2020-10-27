DECLARE
	@IdReferenciaDesde INT = -5,
	@IdReferenciaHasta INT = 5000

SELECT
	*
FROM Ped_Grales 
WHERE
	ISNULL(Acuse, '')            <> '' AND
	ISNULL(Bacuse, '')           <> '' AND
	ISNULL(Desaduanamiento, '' ) <> ''
