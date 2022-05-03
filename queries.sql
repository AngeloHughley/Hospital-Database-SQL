
--SELECT *
--FROM InPatient

--SELECT * 
--FROM Appointments

--SELECT *
--FROM Room

--SELECT *
--FROM Employee

--SELECT *
--FROM Doctor

--SELECT * 
--FROM Nurse

--SELECT *
--FROM Department

--SELECT *
--FROM Equipment

--SELECT * 
--FROM Medicine

--SELECT *
--FROM Invoice

--SELECT * 
--FROM Manufacturer


--Function that looks for appointments of InPatients
SELECT FirstName, LastName, Date, i.PatientID
FROM InPatient i INNER JOIN Appointments a 
ON i.PatientID = a.PatientID

--Function that looks for which Room a patient is in
SELECT p.FirstName, p.LastName, r.RoomNumber, r.RoomType
FROM InPatient p INNER JOIN Room r 
ON p.PatientID = r.PatientID

--Function that looks between InPatients and Nurse
SELECT p.FirstName, p.LastName, e.FirstName, e.LastName
FROM InPatient p INNER JOIN Nurse n ON p.NurseID = n.NurseID
INNER JOIN Employee e ON e.SSN = n.SSN


--Function that looks for the InPatient, Doctor, and Room Number, and the Department Name
SELECT p.FirstName, p.LastName, e.FirstName, e.LastName, r.RoomNumber, de.DName
FROM Employee e INNER JOIN Doctor d ON e.SSN = d.SSN
INNER JOIN InPatient p ON d.DoctorID = p.DoctorID
INNER JOIN Room r ON r.PatientID = p.PatientID
INNER JOIN Department de ON e.DepartmentID = de.DepartmentID

--Function that finds the price of all medicine that equals to the Invoice Total depending on Department. Also find the Mufacturer and the Address
SELECT i.InvoiceTotal, med.Quantity, med.Price, d.DName, man.ManufacturerName, man.Address
FROM Invoice i INNER JOIN Medicine med ON med.InvoiceID = i.InvoiceID
INNER JOIN Department d ON med.DepartmentID = d.DepartmentID
INNER JOIN Manufacturer man ON man.ManufacturerID = i.ManufacturerID
ORDER BY i.InvoiceTotal 

--Function that finds the price of all medicine that equals to the Invoice Total depending on Department. Also find the Mufacturer and the Address
SELECT i.InvoiceTotal, e.Quantity, e.Price, d.DName, man.ManufacturerName, man.Address
FROM Invoice i INNER JOIN Equipment e ON e.InvoiceID = i.InvoiceID
INNER JOIN Department d ON e.DepartmentID = d.DepartmentID
INNER JOIN Manufacturer man ON man.ManufacturerID = i.ManufacturerID
ORDER BY i.InvoiceTotal 

--Conditional Statement for the price of all equipment that equals the Invoice Total depending on Department. Quantity has to be over 100
SELECT i.InvoiceTotal, e.Quantity, e.Price, d.DName, man.ManufacturerName, man.Address
FROM Invoice i INNER JOIN Equipment e ON e.InvoiceID = i.InvoiceID
INNER JOIN Department d ON e.DepartmentID = d.DepartmentID
INNER JOIN Manufacturer man ON man.ManufacturerID = i.ManufacturerID
WHERE e.Quantity > 100
ORDER BY i.InvoiceTotal 

