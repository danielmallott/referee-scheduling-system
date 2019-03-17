ALTER TABLE dbo.RefereePhone
ADD CONSTRAINT [FK_RefereePhone_PhoneType] FOREIGN KEY(PhoneTypeId) REFERENCES Lookup.PhoneType(PhoneTypeId);
GO
