USE [DB_SistemaDeVentas]
GO
/****** Object:  StoredProcedure [dbo].[PA_BuscarId_Productos_Rembolsados]    Script Date: 4/12/2022 15:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[PA_BuscarId_Productos_Rembolsados]
	@Id_Productos_Rembolsados VARCHAR (100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SELECT * FROM Rembolsos
	WHERE Id_Productos_Rembolsados = @Id_Productos_Rembolsados
END
