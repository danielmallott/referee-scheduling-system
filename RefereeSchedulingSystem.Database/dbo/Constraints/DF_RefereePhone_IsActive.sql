ALTER TABLE dbo.RefereePhone
ADD CONSTRAINT [DF_RefereePhone_IsActive] DEFAULT(0) FOR IsActive;
GO
