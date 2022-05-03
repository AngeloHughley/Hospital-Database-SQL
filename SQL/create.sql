
--Creating Table for Manufacturer 
CREATE TABLE Manufacturer (
ManufacturerID int NOT NULL,
ManufacturerName varchar(55) NOT NULL,
Address varchar(50) NOT NULL,
PRIMARY KEY (ManufacturerID)
)

--Creating Table for Invoice
CREATE TABLE Invoice(
InvoiceID int NOT NULL,
InvoiceName varchar(40) NOT NULL,
InvoiceTotal int NOT NULL,
PRIMARY KEY(InvoiceID),
ManufacturerID int FOREIGN KEY REFERENCES Manufacturer(ManufacturerID),
)

--Creating Table for Department
CREATE TABLE Department(
DepartmentID int NOT NULL,
DAddress varchar(45) NOT NULL,
DName varchar(45) NOT NULL,
PRIMARY KEY(DepartmentID)
)

--Creating Table for Medicine
CREATE TABLE Medicine(
DrugID int NOT NULL,
BrandName varchar(40) NOT NULL,
ExpireDate date NOT NULL,
Price int NOT NULL,
Quantity int NOT NULL,
PRIMARY KEY(DrugID),
DepartmentID int FOREIGN KEY REFERENCES Department(DepartmentID) NOT NULL,
InvoiceID int FOREIGN KEY REFERENCES Invoice(InvoiceID) NOT NULL
)

--Creating Table for Medical Equipments
CREATE TABLE Equipment(
EquipmentID int NOT NULL,
EquipmentName varchar(45) NOT NULL,
Price int NOT NULL,
Quantity int NOT NULL,
PRIMARY KEY(EquipmentID),
DepartmentID int FOREIGN KEY REFERENCES Department(DepartmentID) NOT NULL,
InvoiceID int FOREIGN KEY REFERENCES Invoice(InvoiceID) NOT NULL
)


--Creating Table for Employee
CREATE TABLE Employee(
SSN varchar(11) NOT NULL,
FirstName varchar(25) NOT NULL,
LastName varchar(25) NOT NULL,
DOB varchar(15) NOT NULL,
PRIMARY KEY(SSN),
DepartmentID int FOREIGN KEY REFERENCES Department(DepartmentID) NOT NULL
)


--Creating Table for Doctor
CREATE TABLE Doctor(
DoctorID int NOT NULL,
YearsOfExperience int NOT NULL,
Specialty varchar(50) NOT NULL,
PRIMARY KEY (DoctorID),
SSN varchar(11) FOREIGN KEY REFERENCES Employee(SSN) NOT NULL
)

--Creating Table for Nurse
CREATE TABLE Nurse(
NurseID int NOT NULL,
PRIMARY KEY (NurseID),
SSN varchar(11) FOREIGN KEY REFERENCES Employee(SSN) NOT NULL
)

--Creating Table for InPatient
CREATE TABLE InPatient
(PatientID int NOT NULL,
FirstName varchar(25) NOT NULL,
LastName varchar(25) NOT NULL,
DOB varchar(15) NOT NULL,
PhoneNumber varchar(15) NOT NULL,
HomeAddress varchar(45) NOT NULL,
Reason varchar(45) NOT NULL,
InsuranceName varchar(25),
PRIMARY KEY(PatientID),
NurseID int FOREIGN KEY REFERENCES Nurse(NurseID) NOT NULL,
DoctorID int FOREIGN KEY REFERENCES Doctor(DoctorID) NOT NULL
)


--Creating Table for Appointments
CREATE TABLE Appointments
(AppointmentID int NOT NULL,
Date varchar(11) NOT NULL,
Time varchar(9) NOT NULL, 
PRIMARY KEY(AppointmentID),
PatientID int FOREIGN KEY REFERENCES InPatient(PatientID) NOT NULL
)

--Creating Table for Room
CREATE TABLE Room
(RoomID int NOT NULL,
RoomNumber int NOT NULL,
Status varchar(25) NOT NULL,
RoomType varchar(25) NOT NULL,
PRIMARY KEY(RoomID),
PatientID int FOREIGN KEY REFERENCES InPatient(PatientID) NOT NULL
)









