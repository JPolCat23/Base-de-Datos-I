USE [DB_SistemaDeVentas]
GO
/****** Object:  StoredProcedure [dbo].[PA_ModificarProducto]    Script Date: 4/12/2022 15:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[PA_ModificarProducto]
	@Id_Producto VARCHAR(100),
	@Nombre VARCHAR(100),
	@Precio VARCHAR(100),
	@Marca VARCHAR(100),  
	@Stock INTEGER

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	UPDATE Producto
	SET	Id_Producto = @Id_Producto,
		Nombre = @Nombre,
		Precio = @Precio,
		Marca = @Marca,
		Stock = @Stock
	WHERE Id_Producto = @Id_Producto

END