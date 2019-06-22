ALTER TABLE [Lookup].VenueType
ADD CONSTRAINT [FK_VenueType_SportType] FOREIGN KEY(SportTypeId) REFERENCES [Lookup].SportType(SportTypeId);
GO
