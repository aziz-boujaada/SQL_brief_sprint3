 -- EX 2 :
 SELECT * FROM departements;
 -- EX 3 :
SELECT * FROM patients 
ORDER BY date_of_birth ASC
-- EX 4 :
SELECT DISTINCT gender FROM patients;
-- EX 5 :
SELECT * FROM doctors LIMIT 3,
-- EX 6 :
SELECT * FROM patients WHERE date_of_birth > '2000-01-01'
-- EX 7 :
SELECT * FROM doctors 
WHERE  id_departement IN (SELECT  departement_id FROM departements
WHERE departement_name = 'Cardiology')
OR  id_departement IN (SELECT  departement_id FROM departements
WHERE departement_name = 'Neurology')
-- EX 8 :
SELECT * FROM admissions WHERE admission_date >= '2024-03-01' AND discharge_date <= '2024-03-07'
-- EX 9 :
SELECT *,
    CASE 
        WHEN TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) < 18 THEN 'Enfant'
        WHEN TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) BETWEEN 18 AND 64 THEN 'Adulte'
        ELSE 'Senior'
    END AS age_category
FROM patients;
-- EX 10
SELECT COUNT(*) FROM appointements;
-- EX 11
SELECT id_departement, 
COUNT(*) AS doctors_nbr
FROM doctors
GROUP BY  id_departement
-- EX 12
SELECT AVG(TIMESTAMPDIFF(YEAR , date_of_birth ,CURDATE())) AS moyen_age
FROM patients
-- EX 13
SELECT MAX(CONCAT(appointement_date ,' ', appointement_time)) AS last_reserv
FROM appointements
-- EX 14
SELECT id_room,
COUNT(*) AS total_admission
FROM admissions
GROUP BY id_room
-- EX 15
SELECT * FROM `patients` WHERE email IS NULL
-- EX 16
SELECT doctors.first_name AS doctorName , appointements.appointement_date AS appDate , patients.first_name AS patientName FROM doctors
INNER JOIN appointements
ON doctors.doctor_id = appointements.id_doctor
INNER JOIN patients
ON patients.patient_id = appointements.id_patient
-- EX 17
DELETE  appointements WHERE appointement_date > '2024-01-01'

-- EX 18
UPDATE  `departements`
SET departement_name = 'Cancer Treatment'
WHERE departement_name = 'Oncology'
 -- EX 2 :
 SELECT * FROM departements;
 -- EX 3 :
SELECT * FROM patients 
ORDER BY date_of_birth ASC
-- EX 4 :
SELECT DISTINCT gender FROM patients;
-- EX 5 :
SELECT * FROM doctors LIMIT 3,
-- EX 6 :
SELECT * FROM patients WHERE date_of_birth > '2000-01-01'
-- EX 7 :
SELECT * FROM doctors 
WHERE  id_departement IN (SELECT  departement_id FROM departements
WHERE departement_name = 'Cardiology')
OR  id_departement IN (SELECT  departement_id FROM departements
WHERE departement_name = 'Neurology')
-- EX 8 :
SELECT * FROM admissions WHERE admission_date >= '2024-03-01' AND discharge_date <= '2024-03-07'
-- EX 9 :
SELECT *,
    CASE 
        WHEN TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) < 18 THEN 'Enfant'
        WHEN TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) BETWEEN 18 AND 64 THEN 'Adulte'
        ELSE 'Senior'
    END AS age_category
FROM patients;
-- EX 10
SELECT COUNT(*) FROM appointements;
-- EX 11
SELECT id_departement, 
COUNT(*) AS doctors_nbr
FROM doctors
GROUP BY  id_departement
-- EX 12
SELECT AVG(TIMESTAMPDIFF(YEAR , date_of_birth ,CURDATE())) AS moyen_age
FROM patients
-- EX 13
SELECT MAX(CONCAT(appointement_date ,' ', appointement_time)) AS last_reserv
FROM appointements
-- EX 14
SELECT id_room,
COUNT(*) AS total_admission
FROM admissions
GROUP BY id_room
-- EX 15
SELECT * FROM `patients` WHERE email IS NULL
-- EX 16
SELECT doctors.first_name AS doctorName , appointements.appointement_date AS appDate , patients.first_name AS patientName FROM doctors
INNER JOIN appointements
ON doctors.doctor_id = appointements.id_doctor
INNER JOIN patients
ON patients.patient_id = appointements.id_patient
-- EX 17
DELETE  appointements WHERE appointement_date > '2024-01-01'

-- EX 18
UPDATE  `departements`
SET departement_name = 'Cancer Treatment'
WHERE departement_name = 'Oncology'
-- EX 19
SELECT gender,
COUNT(*) AS gender_cont
FROM patients
GROUP BY gender
HAVING COUNT(*) >= 2 
-- EX 20
CREATE VIEW admissions_view AS
SELECT * FROM 	admissions
WHERE discharge_date IS NULL OR discharge_date > CURRENT_DATE
