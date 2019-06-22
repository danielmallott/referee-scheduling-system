CREATE PROCEDURE [Lookup].SportType_GetAll
AS
	SELECT SportTypeId
		   ,SportTypeDescription
	FROM [Lookup].SportType;
GO
