USE hospital_readmission;

SELECT 
    COUNT(*) AS total_patients,
    SUM(readmitted) AS total_readmitted,
    ROUND(SUM(readmitted) * 100.0 / COUNT(*), 2) AS readmission_rate_pct
FROM patients;
SELECT 
    age,
    COUNT(*) AS total_patients,
    SUM(readmitted) AS readmitted_count,
    ROUND(SUM(readmitted) * 100.0 / COUNT(*), 2) AS readmission_rate_pct
FROM patients
GROUP BY age
ORDER BY readmission_rate_pct DESC;

SELECT 
    diag_1 AS primary_diagnosis,
    COUNT(*) AS total_patients,
    SUM(readmitted) AS readmitted_count,
    ROUND(SUM(readmitted) * 100.0 / COUNT(*), 2) AS readmission_rate_pct
FROM patients
GROUP BY diag_1
ORDER BY readmitted_count DESC
LIMIT 10;

SELECT 
    num_medications,
    COUNT(*) AS total_patients,
    ROUND(SUM(readmitted) * 100.0 / COUNT(*), 2) AS readmission_rate_pct
FROM patients
GROUP BY num_medications
ORDER BY num_medications;

SELECT 
    time_in_hospital AS days_in_hospital,
    COUNT(*) AS total_patients,
    ROUND(SUM(readmitted) * 100.0 / COUNT(*), 2) AS readmission_rate_pct
FROM patients
GROUP BY time_in_hospital
ORDER BY time_in_hospital;

SELECT 
    age,
    time_in_hospital,
    num_medications,
    number_diagnoses,
    readmitted,
    CASE 
        WHEN number_diagnoses >= 7 AND num_medications >= 15 AND age >= 70 THEN 'HIGH RISK'
        WHEN number_diagnoses >= 5 AND num_medications >= 10 THEN 'MEDIUM RISK'
        ELSE 'LOW RISK'
    END AS risk_level
FROM patients
ORDER BY risk_level ASC
LIMIT 100;
SHOW COLUMNS FROM patients;