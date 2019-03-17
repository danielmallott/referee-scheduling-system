WITH LookupData
     AS (
     SELECT 1 AS PhoneTypeId,
            'Cell Phone' AS PhoneTypeDescription
     UNION ALL
     SELECT 2,
            'Home Phone'
     UNION ALL
     SELECT 3,
            'Work Phone')
     MERGE INTO Lookup.PhoneType AS TARGET
     USING LookupData AS SOURCE
     ON SOURCE.PhoneTypeId = TARGET.PhoneTypeId
         WHEN MATCHED
         THEN UPDATE SET
                         PhoneTypeDescription = SOURCE.PhoneTypeDescription
         WHEN NOT MATCHED BY TARGET
         THEN
           INSERT(PhoneTypeId,
                  PhoneTypeDescription)
           VALUES
(SOURCE.PhoneTypeId,
 SOURCE.PhoneTypeDescription
)
         WHEN NOT MATCHED BY SOURCE
         THEN DELETE;
GO