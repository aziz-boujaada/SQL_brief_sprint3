
--create data base 
CREATE DATABASE hospitalmanagment;
-- create table of patients
CREATE TABLE patients (
      patient_id INT PRIMARY KEY AUTO_INCREMENT,
      first_name VARCHAR(50),
      last_name VARCHAR(50),
      gender VARCHAR(10),
      date_of_birth DATE , 
      phone_number VARCHAR(15),
      email VARCHAR(100),
      adress VARCHAR(250)
    );
-- create table of departements 
CREATE TABLE departements (
 departement_id INT PRIMARY KEY AUTO_INCREMENT ,
 departement_name VARCHAR(50),
 departement_location VARCHAR(50)
);

-- create table of medications 
CREATE TABLE medications(
  medication_id INT PRIMARY KEY AUTO_INCREMENT,
  medication_name VARCHAR(100),
  dosage VARCHAR(50)
);
-- create table of doctors
CREATE TABLE doctors (
 doctor_id INT PRIMARY KEY AUTO_INCREMENT,
 first_name VARCHAR(50),
 last_name  VARCHAR(50),
 specialization VARCHAR(50),
 phone_number VARCHAR(15),
 email VARCHAR (100)
);
-- create table of admissionds
CREATE TABLE admissions (
  admission_id INT PRIMARY KEY AUTO_INCREMENT,
  admission_date DATE,
  discharge_date DATE
);

-- reate table of rooms
CREATE TABLE rooms(
 room_id INT PRIMARY KEY AUTO_INCREMENT,
 room_number VARCHAR(10),
 room_type ENUM('general' , 'private','icu')
);
-- create table of staff
CREATE TABLE staffs(
  staff_id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  job_title VARCHAR(50) , 
  phone_number VARCHAR(15),
  email VARCHAR(100),
);
-- create prescription table
CREATE TABLE prescriptions(
   prescription_id INT PRIMARY KEY AUTO_INCREMENT,
   prescription_date DATE,
   dosage_instuction VARCHAR(255),
)
-- create appointements table
CREATE TABLE appointements (COMMENT
   appointement_id INT PRIMARY KEY AUTO_INCREMENT,
   appointement_date DATE,
   appointement_time TIME,
   reason VARCHAR(255),
)


--------- ADD FOREIGN KEYS TO TABLES ------


 --- ========= ADMISSION TABLE ==========
-- add patient id to admission table as a foreignFOREIGN key
ALTER TABLE admissionds ADD id_patient INT;
ALTER TABLE admission ADD FOREIGN KEY (id_patient) REFERENCES patients(patient_id)
-- add ROOM id to admission table as a foreignFOREIGN key
ALTER TABLE admissionds ADD id_room INT;
ALTER TABLE admission ADD FOREIGN KEY (id_room) REFERENCES rooms(room_id);


--- ========= PRESCRIPTIONS TABLE ==========
-- add patient id to PRESCRIPTION table as a foreignFOREIGN key

ALTER TABLE prescriptions ADD id_patient INT;
ALTER TABLE prescriptions ADD FOREIGN KEY (id_patient) REFERENCES patients(patient_id);
-- add DOCTOR id to PRESCRIPTION table as a foreignFOREIGN key
ALTER TABLE prescriptions ADD id_doctor INT;
ALTER TABLE prescriptions ADD FOREIGN KEY (id_doctor) REFERENCES doctors(doctor_id);
-- add MEDICATION id to PRESCRIPTION table as a foreignFOREIGN key
ALTER TABLE prescriptions ADD id_medication INT;
ALTER TABLE prescriptions ADD FOREIGN KEY (id_medication) REFERENCES medications(medication_id);


--- ========= APPOITEMENTS TABLE ==========
-- add patient id to APPOITEMENTS table as a foreignFOREIGN key

ALTER TABLE appointements ADD id_patient INT;
ALTER TABLE appointements ADD FOREIGN KEY (id_patient) REFERENCES patients(patient_id)
-- add DOCTOR id to APPOINTEMENTS table as a foreignFOREIGN key
ALTER TABLE appointements ADD id_doctor
ALTER TABLE appointements ADD FOREIGN KEY (id_doctor) REFERENCES doctors(doctor_id);

--- ========= DOCTORS TABLE ==========
-- add patient id to DOCTORS table as a foreignFOREIGN key
ALTER TABLE doctors ADD id_departement INT;
ALTER TABLE doctors ADD FOREIGN KEY (id_departement) REFERENCES departements(departement_id)


--- ========= DOCTORS TABLE ==========
-- add patient id to DOCTORS table as a foreignFOREIGN key
ALTER TABLE staffs ADD id_departement INT;
ALTER TABLE  staffs ADD FOREIGN KEY (id_departement) REFERENCES departements(departement_id)

ALTER TABLE  rooms ADD COLUMN aviabillity BOOLEAN DAFUALT 1