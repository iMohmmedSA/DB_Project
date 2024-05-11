

-- Complex Query for Pharmacists, Their Prescriptions, and Linked Medication Details

SELECT ph.Name AS PharmacistName, p.Name AS PatientName, m.Name AS MedicationName, pr.DatePrescribed, pr.Duration
FROM Pharmacist ph
JOIN Prescription pr ON ph.PharmacistID = pr.PharmacistID
JOIN Patient p ON pr.PatientID = p.PatientID
JOIN Medication m ON pr.MedicationID = m.MedicationID;


-- Pharmacist Prescription Count Report

SELECT ph.Name, COUNT(*) AS MedicationsPrescribed
FROM Pharmacist ph
JOIN Prescription pr ON ph.PharmacistID = pr.PharmacistID
WHERE YEAR(pr.DatePrescribed) > YEAR(CURRENT_DATE) - 1
GROUP BY ph.PharmacistID;


-- Patient Prescription History Report

SELECT p.Name AS PatientName, m.Name AS MedicationName, pr.DatePrescribed, pr.Duration, pr.RefillsRemaining
FROM Patient p
JOIN Prescription pr ON p.PatientID = pr.PatientID
JOIN Medication m ON pr.MedicationID = m.MedicationID
ORDER BY p.Name, pr.DatePrescribed DESC;


-- Total Medication Stock by Manufacturer

SELECT Manufacturer, SUM(StockLevel) AS TotalStock
FROM Medication
GROUP BY Manufacturer;


-- Total Quantity of Medications Ordered from Each Supplier Last Year

SELECT s.Name, SUM(o.QuantityOrdered) AS TotalOrdered
FROM Supplier s
JOIN Inventory_Order o ON s.SupplierID = o.SupplierID
WHERE YEAR(o.OrderDate) < YEAR(CURRENT_DATE) - 1
GROUP BY s.SupplierID;


-- Total Quantity of Medications Ordered from Each Supplier This Year

SELECT s.Name, SUM(o.QuantityOrdered) AS TotalOrdered
FROM Supplier s
JOIN Inventory_Order o ON s.SupplierID = o.SupplierID
WHERE YEAR(o.OrderDate) > YEAR(CURRENT_DATE) - 1
GROUP BY s.SupplierID;


-- Medications with Price Per Unit Less Than 50

SELECT Name, PricePerUnit FROM Medication WHERE PricePerUnit < 50.00;


-- Update Pharmacist Contact Info

UPDATE Pharmacist SET ContactInfo = 'new_contact_info@example.com' WHERE PharmacistID = 5;


-- Get Prescription Refills Remaining

SELECT 
    pr.RefillsRemaining,
    p.Name AS PatientName,
    m.Name AS MedicationName
FROM 
    Prescription pr
JOIN 
    Patient p ON pr.PatientID = p.PatientID
JOIN 
    Medication m ON pr.MedicationID = m.MedicationID
WHERE 
    pr.RefillsRemaining > 0;


-- Get Medications with out of Stock

SELECT * FROM Medication WHERE StockLevel = 0;