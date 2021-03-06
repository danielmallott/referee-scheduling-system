﻿CREATE TABLE dbo.Venue
(
	VenueId UNIQUEIDENTIFIER NOT NULL,
	VenueName NVARCHAR(250) NOT NULL,
	VenueParentId UNIQUEIDENTIFIER NULL,
	VenueTypeId SMALLINT NOT NULL,
	StreetAddressLine1 VARCHAR(250) NULL,
	StreetAddressLine2 VARCHAR(250) NULL,
	StreetAddressLine3 VARCHAR(250) NULL,
	City VARCHAR(250) NULL,
	StateOrProvince CHAR(2) NULL,
	PostalCode VARCHAR(6) NULL,
	ValidFrom DATETIME2(7) GENERATED ALWAYS AS ROW START HIDDEN,
	ValidTo DATETIME2(7) GENERATED ALWAYS AS ROW END HIDDEN,
	PERIOD FOR SYSTEM_TIME(ValidFrom, ValidTo)
) WITH (SYSTEM_VERSIONING=ON(HISTORY_TABLE= History.Venue));
GO
