USE [DB_SistemaDeVentas]
GO
/****** Object:  StoredProcedure [dbo].[Pa_EliminarRembolso]    Script Date: 4/12/2022 15:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Pa_EliminarRembolso]

	@Id_Rembolsos INTEGER

AS
BEGIN

	DELETE FROM Rembolsos
	WHERE Id_Rembolsos = @Id_Rembolsos

END