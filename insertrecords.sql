INSERT INTO patients (first_name, last_name, gender, date_of_birth, phone_number, email, adress) VALUES
('John', 'Doe', 'Male', '1985-03-12', '555-111-0001', 'john.doe@example.com', '123 Elm Street'),
('Emily', 'Smith', 'Female', '1990-07-25', '555-111-0002', 'emily.smith@example.com', '87 Maple Avenue'),
('Michael', 'Johnson', 'Male', '1978-11-05', '555-111-0003', 'm.johnson@example.com', '42 Oak Road'),
('Sarah', 'Brown', 'Female', '1995-01-17', '555-111-0004', 's.brown@example.com', '16 Pine Street'),
('David', 'Wilson', 'Male', '1982-09-30', '555-111-0005', 'david.wilson@example.com', '99 Cedar Lane'),
('Olivia', 'Martinez', 'Female', '1993-08-14', '555-111-0006', 'olivia.martinez@example.com', '466 Hill Street'),
('Daniel', 'Garcia', 'Male', '1989-02-20', '555-111-0007', 'daniel.garcia@example.com', '75 Birch Road'),
('Sophia', 'Lopez', 'Female', '1987-04-11', '555-111-0008', 'sophia.lopez@example.com', '512 Oak Lane'),
('James', 'Anderson', 'Male', '1975-12-06', '555-111-0009', 'j.anderson@example.com', '23 River Street'),
('Mia', 'Clark', 'Female', '1998-11-19', '555-111-0010', 'mia.clark@example.com', '14 Valley Drive'),
('Henry', 'Lewis', 'Male', '1984-10-08', '555-111-0011', 'henry.lewis@example.com', '200 Sunset Blvd'),
('Ella', 'Young', 'Female', '1991-06-12', '555-111-0012', 'ella.young@example.com', '67 Willow Road'),
('Jack', 'Walker', 'Male', '1996-02-11', '555-111-0013', 'jack.walker@example.com', '201 Mountain Road'),
('Ava', 'Hall', 'Female', '1983-09-22', '555-111-0014', 'ava.hall@example.com', '39 Meadow Ave'),
('Lucas', 'Allen', 'Male', '1979-05-04', '555-111-0015', 'lucas.allen@example.com', '78 Forest Street');


INSERT INTO departements (departement_name, departement_location) VALUES
('Cardiology', 'Building A'),
('Neurology', 'Building B'),
('Pediatrics', 'Building C'),
('Orthopedics', 'Building D'),
('Emergency', 'Main Block'),
('Oncology', 'Building E'),
('Dermatology', 'Building F'),
('Radiology', 'Building G'),
('Urology', 'Building H'),
('ENT', 'Building I'),
('Gastroenterology', 'Building J'),
('Psychiatry', 'Building K'),
('Nephrology', 'Building L'),
('Gynecology', 'Building M'),
('Pulmonology', 'Building N');



INSERT INTO medications (medication_name, dosage) VALUES
('Amoxicillin', '500mg'),
('Ibuprofen', '200mg'),
('Metformin', '850mg'),
('Lisinopril', '10mg'),
('Atorvastatin', '20mg'),
('Aspirin', '81mg'),
('Omeprazole', '20mg'),
('Hydrochlorothiazide', '25mg'),
('Azithromycin', '250mg'),
('Simvastatin', '40mg'),
('Doxycycline', '100mg'),
('Prednisone', '5mg'),
('Ciprofloxacin', '500mg'),
('Gabapentin', '300mg'),
('Warfarin', '2mg');


INSERT INTO doctors (first_name, last_name, specialization, phone_number, email) VALUES
('James', 'Clark', 'Cardiologist', '555-222-0001', 'j.clark@hospital.com'),
('Linda', 'Green', 'Neurologist', '555-222-0002', 'l.green@hospital.com'),
('Robert', 'Miller', 'Pediatrician', '555-222-0003', 'r.miller@hospital.com'),
('Patricia', 'Lopez', 'Orthopedic Surgeon', '555-222-0004', 'p.lopez@hospital.com'),
('William', 'Adams', 'General Physician', '555-222-0005', 'w.adams@hospital.com'),
('Emma', 'King', 'Dermatologist', '555-222-0006', 'e.king@hospital.com'),
('Noah', 'Wright', 'Radiologist', '555-222-0007', 'n.wright@hospital.com'),
('Isabella', 'Baker', 'Oncologist', '555-222-0008', 'i.baker@hospital.com'),
('Ethan', 'Campbell', 'ENT Specialist', '555-222-0009', 'e.campbell@hospital.com'),
('Charlotte', 'Mitchell', 'Psychiatrist', '555-222-0010', 'c.mitchell@hospital.com'),
('Benjamin', 'Parker', 'Urologist', '555-222-0011', 'b.parker@hospital.com'),
('Amelia', 'Evans', 'Gynecologist', '555-222-0012', 'a.evans@hospital.com'),
('Jacob', 'Edwards', 'Gastroenterologist', '555-222-0013', 'j.edwards@hospital.com'),
('Harper', 'Collins', 'Pulmonologist', '555-222-0014', 'h.collins@hospital.com'),
('Michael', 'Turner', 'Nephrologist', '555-222-0015', 'm.turner@hospital.com');



INSERT INTO admissions (admission_date, discharge_date) VALUES
('2024-01-05', '2024-01-12'),
('2024-01-10', '2024-01-16'),
('2024-01-20', '2024-01-25'),
('2024-02-02', '2024-02-09'),
('2024-02-15', '2024-02-22'),
('2024-03-01', '2024-03-07'),
('2024-03-10', '2024-03-17'),
('2024-03-20', '2024-03-26'),
('2024-04-01', '2024-04-08'),
('2024-04-12', '2024-04-19'),
('2024-04-25', '2024-05-02'),
('2024-05-01', '2024-05-07'),
('2024-05-10', '2024-05-15'),
('2024-05-18', '2024-05-25'),
('2024-06-01', '2024-06-08');



INSERT INTO rooms (room_number, room_type) VALUES
('101A', 'general'),
('102B', 'private'),
('103C', 'icu'),
('104A', 'general'),
('105B', 'private'),
('201A', 'general'),
('202B', 'private'),
('203C', 'icu'),
('204A', 'general'),
('205B', 'private'),
('301A', 'general'),
('302B', 'private'),
('303C', 'icu'),
('304A', 'general'),
('305B', 'private');



INSERT INTO staffs (first_name, last_name, job_title, phone_number, email) VALUES
('Anna', 'White', 'Nurse', '555-333-0001', 'anna.white@hospital.com'),
('Mark', 'Taylor', 'Receptionist', '555-333-0002', 'mark.taylor@hospital.com'),
('Sophia', 'Harris', 'Lab Technician', '555-333-0003', 's.harris@hospital.com'),
('Daniel', 'King', 'Pharmacist', '555-333-0004', 'daniel.king@hospital.com'),
('Laura', 'Scott', 'Janitor', '555-333-0005', 'laura.scott@hospital.com'),
('Oliver', 'Carter', 'Nurse', '555-333-0006', 'oliver.carter@hospital.com'),
('Grace', 'Mitchell', 'Administrator', '555-333-0007', 'grace.mitchell@hospital.com'),
('Henry', 'Turner', 'Security', '555-333-0008', 'henry.turner@hospital.com'),
('Nora', 'Bennett', 'Clerk', '555-333-0009', 'nora.bennett@hospital.com'),
('Leo', 'Reed', 'Therapist', '555-333-0010', 'leo.reed@hospital.com'),
('Chloe', 'Rivera', 'Nurse', '555-333-0011', 'chloe.rivera@hospital.com'),
('Mason', 'Cook', 'Lab Assistant', '555-333-0012', 'mason.cook@hospital.com'),
('Ella', 'Ward', 'Nutritionist', '555-333-0013', 'ella.ward@hospital.com'),
('Samuel', 'Gray', 'Maintenance', '555-333-0014', 'samuel.gray@hospital.com'),
('Zoe', 'Powell', 'Assistant', '555-333-0015', 'zoe.powell@hospital.com');


INSERT INTO prescriptions (prescription_date, dosage_instuction) VALUES
('2024-05-01', 'Take one tablet twice daily'),
('2024-05-03', 'Apply cream once daily'),
('2024-05-05', 'Take two capsules every 8 hours'),
('2024-05-07', 'Inhale two puffs as needed'),
('2024-05-10', 'Take one tablet before bedtime'),
('2024-05-12', 'Take after meals'),
('2024-05-15', 'Once daily in the morning'),
('2024-05-17', 'Twice daily'),
('2024-05-20', 'Take one capsule every 12 hours'),
('2024-05-23', 'Apply ointment twice daily'),
('2024-05-25', 'Take on empty stomach'),
('2024-05-27', 'Take one tablet every 24 hours'),
('2024-05-29', 'Use inhaler as directed'),
('2024-06-01', 'One tablet daily with food'),
('2024-06-03', 'Two tablets every morning');


INSERT INTO appointements (appointement_date, appointement_time, reason) VALUES
('2024-05-01', '09:00:00', 'Routine check-up'),
('2024-05-02', '10:15:00', 'Follow-up'),
('2024-05-03', '11:30:00', 'Lab results'),
('2024-05-04', '13:00:00', 'Consultation'),
('2024-05-05', '14:45:00', 'Flu symptoms'),
('2024-05-06', '15:30:00', 'Prescription renewal'),
('2024-05-07', '16:00:00', 'Blood pressure check'),
('2024-05-08', '09:45:00', 'Vaccination'),
('2024-05-09', '10:30:00', 'Pain evaluation'),
('2024-05-10', '11:00:00', 'Review treatment'),
('2024-05-11', '12:15:00', 'Allergy test'),
('2024-05-12', '14:00:00', 'Consultation'),
('2024-05-13', '15:10:00', 'Medication adjustment'),
('2024-05-14', '16:30:00', 'Physical exam'),
('2024-05-15', '17:00:00', 'Final follow-up');

