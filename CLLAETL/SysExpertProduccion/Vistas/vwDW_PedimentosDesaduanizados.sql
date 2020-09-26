CREATE VIEW vwDW_PedimentosDesaduanizados
AS
	SELECT
		idReferencia
	FROM Ped_Grales
	WHERE
		ISNULL(Acuse, '')           <> '' AND
		ISNULL(Bacuse, '')          <> '' AND
		ISNULL(Desaduanamiento, '') <> ''