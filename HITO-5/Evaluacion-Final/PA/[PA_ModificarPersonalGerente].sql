USE [DB_SistemaDeVentas]
GO
/****** Object:  StoredProcedure [dbo].[PA_ModificarPersonalGerente]    Script Date: 4/12/2022 15:57:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[PA_ModificarPersonalGerente]

	@Id_Gerente INTEGER,
	@Nombre_Gerente VARCHAR(100),
	@Apellido_Gerente VARCHAR(100),
	@Sueldo_Gerente VARCHAR(100),
	@Turno_Gerente VARCHAR(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	UPDATE PersonalGerente
	SET Nombre_Gerente = @Nombre_Gerente,
		Apellido_Gerente = @Apellido_Gerente,
		Sueldo_Gerente = @Sueldo_Gerente,
		Turno_Gerente = @Turno_Gerente
	WHERE Id_Gerente = @Id_Gerente
END
