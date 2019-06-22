ALTER TABLE dbo.Venue
ADD CONSTRAINT [FK_Venue_VenueType] FOREIGN KEY(VenueTypeId) REFERENCES [Lookup].VenueType(VenueTypeId);
GO
