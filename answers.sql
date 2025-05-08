-- Create database jmclinic
CREATE DATABASE jmclinic;
USE jmclinic;

-- Create Tables with Constraints
-- This table stores information about the departments in the clinic.
CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT
);
-- This table stores information about the patients
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    phone VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(100) UNIQUE,
    town VARCHAR(50) NOT NULL
);
-- This table stores information about the doctors in the clinic.
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(20) NOT NULL UNIQUE,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);
-- This table stores information about appointment status (e.g., Scheduled, Completed, Canceled).
CREATE TABLE AppointmentStatus (
    status_id INT PRIMARY KEY AUTO_INCREMENT,
    status_name VARCHAR(20) NOT NULL UNIQUE
);
-- This table stores the  appointments
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    status_id INT NOT NULL,
    notes TEXT,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    FOREIGN KEY (status_id) REFERENCES AppointmentStatus(status_id)
);

-- Insert Sample Data
-- Inserting sample data into Departments

INSERT INTO Departments (department_name, description) VALUES
('Cardiology', 'Heart-related treatments'),
('Pediatrics', 'Medical care for children'),
('Orthopedics', 'Bone and joint care');

-- Inserting sample data into AppointmentStatus

INSERT INTO AppointmentStatus (status_name) VALUES
('Scheduled'),
('Completed'),
('Canceled');

-- Inserting sample data into Patients
INSERT INTO Patients (first_name, last_name, date_of_birth, gender, phone, email, address) VALUES
('John', 'Mwangi', '1990-05-15', 'Male', '+254741567890', 'johnmwangi@email.com', 'Nairobi'),
('Jane', 'Njeri', '1985-08-22', 'Female', '+254723654321', 'janenjeri@email.com', 'Nyeri');

-- Inserting sample data into Doctors
INSERT INTO Doctors (first_name, last_name, department_id, email, phone) VALUES
('james', 'Murachia', 1, 'JAMES.M@clinic.com', '+254722334455'),
('Monicah', 'Mumbi', 2, 'mumbi.M@clinic.com', '+254566778899');

-- Inserting sample data into Appointments
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, status_id, notes) VALUES
(1, 1, '2023-10-20 10:00:00', 1, 'Routine heart checkup'),
(2, 2, '2023-10-21 14:30:00', 1, 'Child vaccination');