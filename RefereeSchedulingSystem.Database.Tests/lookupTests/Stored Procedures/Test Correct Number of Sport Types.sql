CREATE PROCEDURE lookupTests.[Test Correct Number of Sport Types]
AS
BEGIN
    DECLARE @countOfTypes INT;
    DECLARE @expected INT;
    SET @expected = 2;

    SET @countOfTypes = (SELECT COUNT(*) FROM [Lookup].SportType);

    DECLARE @message NVARCHAR(MAX);
    SET @message = N'Incorrect number of Sport Types found. Expected: ' + CAST(@expected AS NVARCHAR(2)) + N'; Found: ' + CAST(@countOfTypes AS NVARCHAR(2));

    EXEC tSQLt.AssertEquals @Expected = @expected, @Actual = @countOfTypes, @Message = @message;
END