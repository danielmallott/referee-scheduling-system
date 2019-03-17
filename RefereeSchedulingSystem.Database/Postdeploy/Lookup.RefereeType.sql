WITH LookupData
     AS (
     SELECT 1 AS RefereeTypeId,
            'Referee' AS RefereeTypeDescription,
            1 AS SportTypeId
     UNION ALL
     SELECT 2,
            'Linesman',
            1)
     MERGE INTO Lookup.RefereeType AS TARGET
     USING LookupData AS SOURCE
     ON SOURCE.RefereeTypeId = TARGET.RefereeTypeId
         WHEN MATCHED
         THEN UPDATE SET
                         RefereeTypeDescription = SOURCE.RefereeTypeDescription,
                         SportTypeId = SOURCE.SportTypeId
         WHEN NOT MATCHED BY TARGET
         THEN
           INSERT(RefereeTypeId,
                  RefereeTypeDescription,
                  SportTypeId)
           VALUES
(SOURCE.RefereeTypeId,
 SOURCE.RefereeTypeDescription,
 SOURCE.SportTypeId
)
         WHEN NOT MATCHED BY SOURCE
         THEN DELETE;
GO