ALTER TABLE dbo.RefereeEmail
ADD CONSTRAINT [FK_RefereeEmail_Referee] FOREIGN KEY(RefereeId) REFERENCES dbo.Referee(RefereeId);
GO
