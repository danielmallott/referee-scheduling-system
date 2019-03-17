ALTER TABLE dbo.RefereePhone
ADD CONSTRAINT [DF_RefereePhone_IsDefault] DEFAULT(0) FOR IsDefault;
GO
