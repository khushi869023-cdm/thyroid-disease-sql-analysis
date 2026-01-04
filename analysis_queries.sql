-- Patients by thyroid function
SELECT Thyroid_Function, COUNT(*)
FROM thyroid_diff
GROUP BY Thyroid_Function;

-- Recurrence rate by pathology
SELECT Pathology, COUNT(*) AS Total,
SUM(Recurred = 'Yes') AS Recurred_Cases
FROM thyroid_diff
GROUP BY Pathology;

-- Risk distribution by stage
SELECT Stage, Risk, COUNT(*)
FROM thyroid_diff
GROUP BY Stage, Risk;

-- Recurrence rate by stage
SELECT Stage,
COUNT(*) AS Total_Patients,
SUM(Recurred = 'Yes') AS Recurred_Cases,
ROUND(SUM(Recurred = 'Yes') * 100.0 / COUNT(*), 2) AS Recurrence_Percentage
FROM thyroid_diff
GROUP BY Stage;

-- Smoking history vs risk level
SELECT Smoking, Risk, COUNT(*) AS Count
FROM thyroid_diff
GROUP BY Smoking, Risk;

