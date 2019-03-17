CREATE CLUSTERED INDEX CX_Referee_History_RefereeId_Date ON History.Referee(RefereeId, ValidFrom, ValidTo);
GO
