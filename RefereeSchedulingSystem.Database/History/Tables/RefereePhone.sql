﻿CREATE TABLE History.RefereePhone
(
	RefereeId UNIQUEIDENTIFIER NOT NULL,
	PhoneTypeId SMALLINT NOT NULL,
	IsActive BIT NOT NULL,
	IsDefault BIT NOT NULL,
	DisplayOrder TINYINT NOT NULL,
	ValidFrom DATETIME2(7) NOT NULL,
	ValidTo DATETIME2(7) NOT NULL
);
GO
