USE [DB_SistemaDeVentas]
GO
/****** Object:  StoredProcedure [dbo].[PA_MostrarRembolsos]    Script Date: 4/12/2022 15:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[PA_MostrarRembolsos]


AS
BEGIN

	SELECT * FROM Rembolsos
	ORDER BY Id_Rembolsos

END