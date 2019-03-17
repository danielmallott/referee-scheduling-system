ALTER TABLE dbo.RefereePhone
ADD CONSTRAINT [FK_RefereePhone_Referee] FOREIGN KEY(RefereeId) REFERENCES dbo.Referee(RefereeId);
GO
