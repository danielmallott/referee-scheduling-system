CREATE CLUSTERED INDEX CX_RefereeEmail_History_RefereeIdEmailTypeId_Date ON History.RefereeEmail(RefereeId, EmailTypeId, ValidFrom, ValidTo);
GO
