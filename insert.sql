--Inserting values into Manufacturer Table
INSERT INTO Manufacturer(ManufacturerID, ManufacturerName, Address)
VALUES
(133, 'Medicine Seller Inc.', '433 Old Dixie Highway'),
(135, 'M. Equipment Seller Inc.', '567 Sparta Road')

--Inserting values into Invoice Table
INSERT INTO Invoice(InvoiceID, InvoiceName, InvoiceTotal, ManufacturerID)
VALUES
(111, 'Medicine Sale', 8204, 133),
(112, 'Medicine Sale', 5998, 133),
(113, 'Medicine Sale', 5470, 133),
(121, 'Medical Equipments And MISC', 2860, 135),
(122, 'Medical Equipments And MISC', 2260, 135),
(123, 'Medical Equipments And MISC', 2260, 135)

--Inserting data into Department Table
INSERT INTO Department(DepartmentID, DName, DAddress)
VALUES
(556, 'Emergency', '232 Lakview Road'),
(555, 'Inservice', '231 Lakview Road'),
(554, 'Pediatric', '230 Lakview Road')

--Inserting data into Medicine
INSERT INTO Medicine(DrugID, BrandName, ExpireDate, Price, Quantity, DepartmentID, InvoiceID)
VALUES
(45634, 'Tylenol', '05/11/2029', 10, 100, 556, 111),
(13445, 'Advil', '10/20/2028', 11, 250, 556, 111),
(20267, 'Felipium', '11/13/2028', 7, 200, 556, 111),
(21521, 'Bismol', '09/22/2029', 9, 60, 556, 111),               --8204
(22189, 'Abilify', '01/23/2029', 12, 120, 556, 111),
(34123, 'Adacel', '03/29/2030', 6, 59, 556, 111),
(15222, 'Apidra', '05/05/2027', 6, 120, 556, 111),
(13447, 'Advil', '10/20/2028', 11, 250, 554, 112),
(21524, 'Bismol', '09/25/2029', 9, 65, 554, 112),
(35012, 'Benadryl', '12/13/2030', 8, 109, 554, 112),
(28381, 'Boostrix', '02/20/2029', 7, 22, 554, 112),             --5998
(39912, 'Caplyta', '04/23/2029', 7, 61, 554, 112),
(30412, 'Cortef', '06/28/2030', 10, 121, 554, 112),
(13449, 'Advil', '10/22/2028', 10, 210, 555, 113),
(15981, 'Azopt', '11/02/2029', 5, 150, 555, 113),
(16000, 'Cytra-K', '05/20/2030', 5, 55, 555, 113),              --5470
(14256, 'Glyset', '10/12/2027', 5, 67, 555, 113),
(18371, 'Iluvien', '11/20/2028', 7, 45, 555, 113),
(45639, 'Tylenol', '05/13/2029', 6, 110, 555, 113),
(34891, 'Nesina' , '04/12/2029', 9, 115, 555, 113)


--Inserting values into Equipment Table
INSERT INTO Equipment(EquipmentID, EquipmentName, Price, Quantity, DepartmentID, InvoiceID)
VALUES
(13112, 'Medical Syringe L', 5, 200, 556, 121),
(13115, 'Medical Syringe L', 5, 200, 555, 123),
(13116, 'Medical Syringe L', 5, 200, 554, 122), 
(13119, 'Medical Syringe S', 3, 180, 556, 121),
(13231, 'Medical Syringe S', 3, 180, 555, 123),
(13232, 'Medical Syringe S', 3, 180, 554, 122),
(13421, 'Medical Syringe M', 4, 180, 556, 121), 
(13422, 'Medical Syringe M', 4, 180, 555, 123),       --2260
(13423, 'Medical Syringe M', 4, 180, 554, 122),       --2260
(16754, 'Medical Bed', 75, 8, 556, 121)               --2860

--Inserting data into the Employee Table
INSERT INTO Employee(SSN, FirstName, LastName, DOB, DepartmentID)
VALUES
('777-24-2991', 'Josh', 'Joseph', '09-22-1982', 554),    --Pediatric Physician
('356-17-6553', 'Ciara', 'Smith', '03-14-1983', 554),    --Pediactric Physician
('473-44-1279', 'Tom', 'Normandin', '12-13-1980', 555),  --Family Medicine Physician
('550-12-8701', 'Trevor', 'Owens', '01-23-1979', 555),   --Family Medicine Physician
('266-13-3497', 'Lisa', 'Martinez', '06-14-1981', 555),  --Internal Medicine Physician
('363-45-1990', 'Michael', 'Cruz', '02-03-1979', 555),   --Internal Medicine Physician
('216-25-6882', 'Johnny', 'Joseph', '04-19-1977', 555),  --Orthopedist Surgeon
('645-10-1667', 'Nya', 'Jackson', '11-19-1980', 555), --Orthopedist Surgeon (Skeleton)
('521-11-7677', 'Jamie', 'Lin', '03-22-1976', 555),      --Orthopedist Surgeon
('813-15-1922', 'Brock', 'Wilson', '07-02-1979', 555),    --Orthopedist Surgeon
('732-33-3341', 'Justin', 'Simmons', '08-01-1979', 555), --General Surgeon
('144-16-2000', 'James', 'Sunder', '12-06-1974', 555),   --General Surgeon
('167-15-1444', 'Will', 'Morales', '05-11-1973', 555),   --Pulmonologist
('185-34-2899', 'Peter', 'Carol', '02-23-1984', 556),    --Neurological Surgeon
('123-11-2222', 'Harold', 'Johnson', '01-11-1979', 556),  --Neurological Surgeon
('155-26-1212', 'Steven', 'Green', '11-11-1980', 556),   --Cardiothoracic Surgeon
('369-65-2210', 'Emily', 'Torres', '01-25-1991', 555),   --Nurse
('151-20-1563', 'Destiny', 'Williams', '11-23-1992', 555),--Nurse
('206-33-4442', 'Jada', 'Johnson', '03-23-1992', 555),    --Nurse
('111-20-1566', 'Taylor', 'Smith', '02-13-1993', 555),   --Nurse
('236-12-2731', 'Cole', 'Litten', '06-27-1991', 555),    --Nurse
('133-02-4344', 'Tray', 'Smartts', '09-07-1993', 555),    --Nurse
('188-17-2555', 'Rebecca', 'Hunt', '01-22-1994', 555),     --Nurse
('222-33-1599', 'Teddy', 'Norway', '11-13-1994', 555),      --Nurse
('333-16-2901', 'Sid', 'Rav', '02-23-1995', 555),          --Nurse
('426-26-9999', 'Jesse', 'James', '03-24-1991', 555),       --Nurse
('111-23-4655', 'Jake', 'Fin', '04-12-1990', 555),          --Nurse
('389-23-1499', 'Coby', 'Jade', '12-02-1995', 555),         --Nurse
('256-03-4432', 'Christian', 'Tayolor', '07-13-1994', 554),   --PediatricNurse
('444-23-1993', 'Yelena', 'Craff', '09-16-1994', 554),        --PediatricNurse 
('256-10-8888', 'Javier', 'Martinez', '01-16-1987', 555),--Custodian
('152-29-1067', 'Drew', 'Torrez', '10-14-1990', 554)     --Custodian

--Inserting data into Doctor Table
INSERT INTO Doctor(DoctorID, YearsOfExperience, Specialty, SSN)
VALUES
(50554, 10, 'Pediatric', '777-24-2991'),
(48443, 9, 'Pediatric', '356-17-6553'),
(36363, 11, 'Family Medicine', '473-44-1279'),
(40456, 12, 'Family Medicine', '550-12-8701'),
(27891, 13, 'Internal Medicine', '266-13-3497'), 
(13561, 14, 'Internal Medicine', '363-45-1990'),
(12901, 16, 'Orthopedist Surgeon','216-25-6882'),
(30342, 9, 'Orthopedist Surgeon', '645-10-1667'),
(21132, 11, 'Orthopedist Surgeon', '521-11-7677'),
(44437, 13, 'Orthopedist Surgeon', '813-15-1922'),
(33155, 12, 'General Surgeon', '732-33-3341'),
(41926, 12, 'General Surgeon', '144-16-2000'),
(50011, 12, 'Pulmonologist', '167-15-1444'),
(23455, 10, 'Neurological Surgeon', '185-34-2899'),
(10993, 12, 'Neurological Surgeon', '123-11-2222'),
(47892, 11, 'Cardiothoracic Surgeon', '155-26-1212')


--Inserting data into Nurse Table
INSERT INTO Nurse(NurseID, SSN)
VALUES
(10225, '369-65-2210'),
(10432, '151-20-1563'),
(23512, '206-33-4442'),
(24612, '111-20-1566'),
(21209, '236-12-2731'),
(33174, '133-02-4344'),
(38902, '188-17-2555'),
(33091, '222-33-1599'),
(20931, '333-16-2901'),
(20937, '426-26-9999'),
(26571, '111-23-4655'),
(29101, '389-23-1499'),
(12213, '256-03-4432'),
(14560, '444-23-1993')

--Inserting data into the InPatient Table
INSERT INTO InPatient(PatientID, FirstName, LastName, DOB, PhoneNumber, HomeAddress, Reason, InsuranceName, NurseID, DoctorID)
VALUES
(13759, 'John', 'Norman', '03/13/2005', '567-201-0456', '1111 Terrance Blvd', 'Sore throat', 'TriCare', 12213, 50554),
(14226, 'Baker', 'Jones', '05/26/1998', '490-456-3333', '245 Highway Street', 'Broken finger', 'United Health', 10432, 33155),
(15556, 'William', 'White', '11/13/1991', '404-092-0389', '3939 Old Creek Road', 'Flu like symptoms', 'CareFirst Inc', 23512, 36363),
(12675, 'Drew', 'Reeves', '14/09/2003', '678-153-6798', '1093 Anvil Pkwy', 'Broken nose', 'Blue Cross', 14560, 41926),
(20933, 'Aron', 'Newton', '11/27/1999', '789-456-2133', '4986 Ranger Road', 'Appendix pain', 'Aetna', 21209, 27891),
(21567, 'Randy', 'Baker', '09/11/1993', '303-456-2144', '2094 Old Ridge Road', 'Strep throat', 'Medicaid', 33174, 40456),
(17777, 'Oscar', 'Nore', '04/23/1997', '404-232-4316', '2112 Broadway Road', 'Cold like symptoms', 'Aetna', 38902, 36363),
(18316, 'Alex', 'Perez', '05/12/1991', '502-125-2626', '1432 Old Manchester Road', 'Severe Breathing Problems', 'Tricare', 10225, 13561)
INSERT INTO InPatient(PatientID, FirstName, LastName, DOB, PhoneNumber, HomeAddress, Reason, InsuranceName, NurseID, DoctorID)
VALUES
(21789, 'Johnny', 'Vincent', '04/12/2000', '567-213-9877', '3133 Falconcrest Road', 'Required Meniscus Surgery', 'United Health', 33091, 12901),
(30456, 'Ned', 'Crest', '02/21/1988', '404-789-1252', '121 River West Road', 'Required ACL Surgery', 'TriCare', 20931, 30342),
(10226, 'Gregory', 'Johnson', '05/23/1994', '678-125-2391', '3443 North Side Creek', 'Surgical Fracture Repair', 'Medicaid', 20937, 33155),
(36234, 'Jimmy', 'Hopkins', '01/29/1999', '239-156-9233', '2093 Old Manhattan Road', 'Shoulder Dislocation Surgery', 'TriCare', 26571, 41926),
(40466, 'Ted', 'Jones', '03/23/1985', '404-789-1111', '2129 Reddings Road', 'Rotator Cuff Surgery', 'Medicaid', 29101, 21132),
(15521, 'Cindy', 'Cruz', '01/13/2002', '605-213-4444', '1444 Old Morrow Road', 'Torn Labrum Surgery', 'Blue Corss', 10225, 44437),
(14566, 'Pete', 'Novak', '02/12/1997', '256-939-3422', '1088 Newton Street Road', 'Required ACL Surgery', 'Medicaid', 10432, 12901 ),
(15245, 'Gary', 'Smith', '10/16/1989', '404-432-2911', '2661 Bullsworth Creek', 'Required Meniscus Surgery', 'CareFirst Inc', 23512, 30342),
(20999, 'Angela', 'Jones', '08/24/1999', '404-387-4111', '5673 Ellencrest Road', 'Required Cervical Disk Replacement', 'United Health', 24612, 33155),
(13346, 'Wendy', 'Rodrigo', '07/23/1995', '678-785-4128', '7891 Fairview Road', 'Blood Clot in Brain', 'TriCare', 33174, 23455),
(15663, 'James', 'Hanson', '04/23/1988', '770-512-2222', '564 Minecrest Pkwy', 'Required Lung Removal', 'Tricare', 38902, 47892)

--Inserting data into the Appointment Table
INSERT INTO Appointments(AppointmentID, Date, Time, PatientID)
VALUES
(13248, '05/11/2022', '2:00 PM', 36234),
(13249, '05/11/2022', '2:00 PM', 20933),
(13255, '05/12/2022', '12:00 PM', 15245),
(13256, '05/12/2022', '1:00 PM', 20999),
(13258, '05/12/2022', '2:30 PM', 15663)

--Inserting data into the Room Table
INSERT INTO Room(RoomID, RoomNumber, RoomType, Status, PatientID)
VALUES
(1149, 1, 'Consulting', 'Occupied', 13759),
(1293, 2, 'Consulting', 'Occupied', 14226),
(1316, 3, 'Consulting', 'Occupied', 17777),
(1437, 4, 'Consulting', 'Occupied', 20933),
(1547, 5, 'Consulting', 'Occupied', 15556),
(1619, 6, 'Consulting', 'Occupied', 18316),
(1710, 7, 'Consulting', 'Occupied', 21567),
(1829, 8, 'Consulting', 'Occupied', 12675),
(11563, 15, 'Surgical', 'Occupied', 13346),
(16111, 16, 'Surgical', 'Occupied', 10226),
(17813, 17, 'Surgical', 'Occupied', 14566),
(18192, 18, 'Surgical', 'Occupied', 15521), 
(19643, 19, 'Surgical', 'Occupied', 30456),
(20912, 30, 'Recovery', 'Occupied', 21789),
(21345, 31, 'Recovery', 'Occupied', 36234),
(22674, 32, 'Recovery', 'Occupied', 15245),
(23351, 33, 'Recovery', 'Occupied', 20999),
(24712, 34, 'Recovery', 'Occupied', 15663),
(25925, 35, 'Recovery', 'Occupied', 40466)








