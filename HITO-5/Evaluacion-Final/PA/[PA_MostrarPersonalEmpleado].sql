USE [DB_SistemaDeVentas]
GO
/****** Object:  StoredProcedure [dbo].[PA_MostrarPersonalEmpleado]    Script Date: 4/12/2022 15:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[PA_MostrarPersonalEmpleado]

	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SELECT * FROM PersonalEmpleado
	ORDER BY Id_Empleado;
END
