WITH LookupData
     AS (
     SELECT 1 AS EmailTypeId,
            'Personal Email' AS EmailTypeDescription
     UNION ALL
     SELECT 2,
            'Work Email')
     MERGE INTO Lookup.EmailType AS TARGET
     USING LookupData AS SOURCE
     ON SOURCE.EmailTypeId = TARGET.EmailTypeId
         WHEN MATCHED
         THEN UPDATE SET
                         EmailTypeDescription = SOURCE.EmailTypeDescription
         WHEN NOT MATCHED BY TARGET
         THEN
           INSERT(EmailTypeId,
                  EmailTypeDescription)
           VALUES
(SOURCE.EmailTypeId,
 SOURCE.EmailTypeDescription
)
         WHEN NOT MATCHED BY SOURCE
         THEN DELETE;
GO