ALTER TABLE Lookup.StateProvince
ADD CONSTRAINT [FK_StateProvince_Country] FOREIGN KEY(CountryId) REFERENCES Lookup.Country(CountryId);
GO
