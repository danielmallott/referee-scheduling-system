﻿CREATE TABLE History.Referee
(
	RefereeId UNIQUEIDENTIFIER NOT NULL,
	FirstName NVARCHAR(250) NOT NULL,
	MiddleName NVARCHAR(250) NULL,
	LastName NVARCHAR(250) NOT NULL,
	TaxIdNumber VARCHAR(10) MASKED WITH (FUNCTION = 'default()') NULL,
	DateOfBirth DATE MASKED WITH (FUNCTION = 'default()') NOT NULL,
	MailingAddressLine1 VARCHAR(250) NOT NULL,
	MailingAddressLine2 VARCHAR(250) NULL,
	MailingAddressLine3 VARCHAR(250) NULL,
	MailingCity VARCHAR(250) NOT NULL,
	MailingStateOrProvince CHAR(2) NOT NULL,
	MailingPostalCode VARCHAR(6) NOT NULL,
	ValidFrom DATETIME2(7) NOT NULL,
	ValidTo DATETIME2(7) NOT NULL
)
