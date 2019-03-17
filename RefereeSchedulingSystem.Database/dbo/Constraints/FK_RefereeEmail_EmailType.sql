ALTER TABLE dbo.RefereeEmail
ADD CONSTRAINT [FK_RefereeEmail_EmailType] FOREIGN KEY(EmailTypeId) REFERENCES Lookup.EmailType(EmailTypeId);
GO
