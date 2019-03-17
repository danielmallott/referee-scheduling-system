ALTER TABLE dbo.RefereeEmail
ADD CONSTRAINT DF_RefereeEmail_IsDefault DEFAULT(0) FOR IsDefault;
GO
