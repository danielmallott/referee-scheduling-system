CREATE PROCEDURE lookupTests.[Test SportType_GetAll Returns Table]
AS
BEGIN
	IF OBJECT_ID('actual') IS NOT NULL DROP TABLE actual;
	IF OBJECT_ID('expected') IS NOT NULL DROP TABLE expected;

	CREATE TABLE actual
	(
		SportTypeId SMALLINT NOT NULL,
		SportTypeDescription VARCHAR(50) NOT NULL
	)

	CREATE TABLE expected
	(
		SportTypeId SMALLINT NOT NULL,
		SportTypeDescription VARCHAR(50) NOT NULL
	)

	INSERT INTO expected (SportTypeId, SportTypeDescription)
	SELECT 1 AS SportTypeId,
			'Ice Hockey' AS SportTypeDescription

	INSERT actual
	EXEC [Lookup].SportType_GetAll;

	DECLARE @failMessage NVARCHAR(MAX);
	SET @failMessage = N'Returned SportType table did not match expected SportType table.';

	EXEC tSQLt.AssertEqualsTable 
		@Expected ='expected', 
		@Actual = 'actual',
		@Message = @failMessage;
END;
GO
