WITH LookupData
     AS (
     SELECT 1 AS SportTypeId,
            'Ice Hockey' AS SportTypeDescription)
     MERGE INTO Lookup.SportType AS TARGET
     USING LookupData AS SOURCE
     ON SOURCE.SportTypeId = TARGET.SportTypeId
         WHEN MATCHED
         THEN UPDATE SET
                         SportTypeDescription = SOURCE.SportTypeDescription
         WHEN NOT MATCHED BY TARGET
         THEN
           INSERT(SportTypeId,
                  SportTypeDescription)
           VALUES
(SOURCE.SportTypeId,
 SOURCE.SportTypeDescription
)
         WHEN NOT MATCHED BY SOURCE
         THEN DELETE;
GO