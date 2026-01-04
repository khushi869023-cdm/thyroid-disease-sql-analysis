-- Patients by thyroid function
SELECT Thyroid_Function, COUNT(*)
FROM thyroid_data
GROUP BY Thyroid_Function;

-- Recurrence rate by pathology
SELECT Pathology, COUNT(*) AS Total,
SUM(Recurred = 'Yes') AS Recurred_Cases
FROM thyroid_data
GROUP BY Pathology;

-- Risk distribution by stage
SELECT Stage, Risk, COUNT(*)
FROM thyroid_data
GROUP BY Stage, Risk;
