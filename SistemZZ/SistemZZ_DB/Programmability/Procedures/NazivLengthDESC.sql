CREATE PROCEDURE NazivLengthDESC
AS
SELECT 
	NazivSZZ,
	LEN(NazivSZZ) naziv_szz_length
FROM
	[SistemZdrZasDB].[dbo].[SistemZdravstveneZastite]
ORDER BY
	LEN(NazivSZZ) DESC;