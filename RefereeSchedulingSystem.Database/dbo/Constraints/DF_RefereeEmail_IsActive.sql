ALTER TABLE dbo.RefereeEmail
ADD CONSTRAINT DF_RefereeEmail_IsActive DEFAULT(0) FOR IsActive;
GO
