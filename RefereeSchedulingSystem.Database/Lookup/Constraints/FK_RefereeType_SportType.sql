ALTER TABLE Lookup.RefereeType
ADD CONSTRAINT [FK_RefereeType_SportType] FOREIGN KEY(SportTypeId) REFERENCES Lookup.SportType(SportTypeId);
GO
