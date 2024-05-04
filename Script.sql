DROP TABLE IF EXISTS Prescription;
DROP TABLE IF EXISTS Inventory_Order;
DROP TABLE IF EXISTS Medication;
DROP TABLE IF EXISTS Supplier;
DROP TABLE IF EXISTS Patient;
DROP TABLE IF EXISTS Pharmacist;

CREATE TABLE Pharmacist (
    PharmacistID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    ContactInfo VARCHAR(255)
);

CREATE TABLE Patient (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    ContactInfo VARCHAR(255),
    InsuranceDetails VARCHAR(255)
);

CREATE TABLE Medication (
    MedicationID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Manufacturer VARCHAR(255),
    StockLevel INT,
    PricePerUnit DECIMAL(10, 2)
);

CREATE TABLE Prescription (
    PrescriptionID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT,
    PharmacistID INT,
    DatePrescribed DATE,
    MedicationID INT,
    Duration VARCHAR(255),
    RefillsRemaining INT,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (PharmacistID) REFERENCES Pharmacist(PharmacistID),
    FOREIGN KEY (MedicationID) REFERENCES Medication(MedicationID)
);

CREATE TABLE Supplier (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    ContactInfo VARCHAR(255)
);

CREATE TABLE Inventory_Order (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    MedicationID INT,
    SupplierID INT,
    QuantityOrdered INT,
    OrderDate DATE,
    ReceivedDate DATE,
    FOREIGN KEY (MedicationID) REFERENCES Medication(MedicationID),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);

-- ALTER TABLE Pharmacist AUTO_INCREMENT = 1;
-- ALTER TABLE Patient AUTO_INCREMENT = 1;
-- ALTER TABLE Medication AUTO_INCREMENT = 1;
-- ALTER TABLE Prescription AUTO_INCREMENT = 1;
-- ALTER TABLE Supplier AUTO_INCREMENT = 1;
-- ALTER TABLE Inventory_Order AUTO_INCREMENT = 1;


INSERT INTO Pharmacist (PharmacistID, Name, ContactInfo) VALUES
(1, 'Mohammed Ahmed', 'mohammed.ahmed@example.com'),
(2, 'Mohammed Anwar', 'Mohmmed.Anwar@example.com'),
(3, 'Abdullah faisal', 'Abdullah.faisal@example.com'),
(4, 'Ridha faisal', 'Ridha.faisal@example.com'),
(5, 'Yousef Amir', 'yousef.amir@example.com'),
(6, 'Maha Zain', 'maha.zain@example.com'),
(7, 'Amir Faisal', 'amir.faisal@example.com'),
(8, 'Noor Samira', 'noor.samira@example.com'),
(9, 'Zainab Laila', 'zainab.laila@example.com'),
(10, 'Bilal Tariq', 'bilal.tariq@example.com'),
(11, 'Salma Rania', 'salma.rania@example.com'),
(12, 'Tariq Ali', 'tariq.ali@example.com'),
(13, 'Amina Hana', 'amina.hana@example.com'),
(14, 'Faisal Omar', 'faisal.omar@example.com'),
(15, 'Rania Layla', 'rania.layla@example.com'),
(16, 'Samir Khalid', 'samir.khalid@example.com'),
(17, 'Hana Sara', 'hana.sara@example.com'),
(18, 'Omar Yousef', 'omar.yousef@example.com'),
(19, 'Lina Maha', 'lina.maha@example.com'),
(20, 'Ali Bilal', 'ali.bilal@example.com');

INSERT INTO Patient (Name, ContactInfo, InsuranceDetails) VALUES
('Anwar Saleh', 'anwar.saleh@example.com', '00122345'),
('Leila Abadi', 'leila.abadi@example.com', '00456789'),
('Sami Fayed', 'sami.fayed@example.com', '00234567'),
('Rana Khaled', 'rana.khaled@example.com', '00891011'),
('Tarek Nassar', 'tarek.nassar@example.com', '00678901'),
('Noura Masri', 'noura.masri@example.com', '00112233'),
('Hadi Mansour', 'hadi.mansour@example.com', '00334455'),
('Sara Taha', 'sara.taha@example.com', '00556677'),
('Omar Zaki', 'omar.zaki@example.com', '00998877'),
('Yasmin Amari', 'yasmin.amari@example.com', '00221133'),
('Ibrahim Qasim', 'ibrahim.qasim@example.com', '00442266'),
('Mona Salem', 'mona.salem@example.com', '00778899'),
('Kamal Shadi', 'kamal.shadi@example.com', '00011223'),
('Farah Hadi', 'farah.hadi@example.com', '00335577'),
('Ali Jabbar', 'ali.jabbar@example.com', '00112288'),
('Nadia Youssef', 'nadia.youssef@example.com', '00445566'),
('Zain Imam', 'zain.imam@example.com', '00226688'),
('Layal Awad', 'layal.awad@example.com', '00557799'),
('Bilal Hamdi', 'bilal.hamdi@example.com', '00661122'),
('Dalia Rahim', 'dalia.rahim@example.com', '00773344');

INSERT INTO Medication (Name, Manufacturer, StockLevel, PricePerUnit) VALUES
('Panadol Extra', 'GSK', 150, 15.00),
('Ventolin Inhaler', 'GSK', 100, 35.00),
('Augmentin 625mg', 'GSK', 200, 25.50),
('Nexium 40mg', 'AstraZeneca', 120, 42.00),
('Lipitor 20mg', 'Pfizer', 90, 18.75),
('Crestor 10mg', 'AstraZeneca', 110, 23.40),
('Amoxil 500mg', 'GSK', 130, 22.00),
('Zestril 20mg', 'AstraZeneca', 140, 28.50),
('Co-Diovan 160mg/12.5mg', 'Novartis', 85, 44.25),
('Januvia 100mg', 'Merck', 75, 53.00),
('Xarelto 20mg', 'Bayer', 100, 88.00),
('Brilinta 90mg', 'AstraZeneca', 50, 76.50),
('Symbicort Turbuhaler', 'AstraZeneca', 115, 102.00),
('Plavix 75mg', 'Sanofi', 200, 45.25),
('Eliquis 5mg', 'Pfizer', 80, 84.75),
('Abilify 10mg', 'Otsuka', 60, 150.00),
('Lyrica 75mg', 'Pfizer', 90, 47.00),
('Humira 40mg', 'AbbVie', 40, 2100.00),
('Enbrel 50mg', 'Pfizer', 70, 1750.00),
('Gleevec 400mg', 'Novartis', 30, 2450.00);

INSERT INTO Prescription (PatientID, PharmacistID, DatePrescribed, MedicationID, Duration, RefillsRemaining) VALUES
(1, 1, '2024-05-01', 1, '10 days', 0),
(2, 1, '2024-05-02', 2, '30 days', 1),
(3, 2, '2024-05-03', 3, '15 days', 2),
(4, 2, '2024-05-04', 4, '30 days', 3),
(5, 3, '2024-05-05', 5, '60 days', 1),
(6, 3, '2024-05-06', 6, '45 days', 0),
(7, 4, '2024-05-07', 7, '30 days', 2),
(8, 4, '2024-05-08', 8, '10 days', 0),
(9, 5, '2024-05-09', 9, '20 days', 1),
(10, 5, '2024-05-10', 10, '90 days', 4),
(11, 1, '2024-05-11', 11, '15 days', 3),
(12, 1, '2024-05-12', 12, '10 days', 0),
(13, 2, '2024-05-13', 13, '30 days', 2),
(14, 2, '2024-05-14', 14, '60 days', 1),
(15, 3, '2024-05-15', 15, '45 days', 2),
(16, 3, '2024-05-16', 16, '30 days', 0),
(17, 4, '2024-05-17', 17, '30 days', 3),
(18, 4, '2024-05-18', 18, '20 days', 1),
(19, 5, '2024-05-19', 19, '60 days', 4),
(20, 5, '2024-05-20', 20, '10 days', 0);

INSERT INTO Supplier (SupplierID, Name, ContactInfo) VALUES
(1, 'MedSupply Inc.', 'info@medsupplyinc.com'),
(2, 'Global Pharma Ltd.', 'contact@globalpharma.com'),
(3, 'HealthPlus Distributors', 'support@healthplus.com'),
(4, 'BioMed Materials', 'sales@biomematerials.com'),
(5, 'PharmaSource Group', 'info@pharmasourcegroup.com'),
(6, 'Essential Supplies Co.', 'contact@essentialsupplies.com'),
(7, 'Prime Medical Supply', 'service@primemedicalsupply.com'),
(8, 'Alliance Health Distributors', 'helpdesk@alliancehealth.com'),
(9, 'Reliable MedEquip', 'orders@reliablemedequip.com'),
(10, 'DirectMed Parts', 'support@directmedparts.com'),
(11, 'MediQuick Supply Co.', 'sales@mediquicksupply.com'),
(12, 'HealthGear Distributors', 'info@healthgeardistributors.com'),
(13, 'SecureMed Logistics', 'contact@securemedlogistics.com'),
(14, 'Rapid Health Supplies', 'service@rapidhealthsupplies.com'),
(15, 'Unity Medical Distribution', 'support@unitymedical.com'),
(16, 'NexGen Medical Distributors', 'info@nexgenmedical.com'),
(17, 'ProHealth Supply Chain', 'orders@prohealthsupply.com'),
(18, 'Elite Pharma Solutions', 'contact@elitepharmasolutions.com'),
(19, 'MedicAid Distributing', 'help@medicaidistributing.com'),
(20, 'Trusted Supplier Network', 'service@trustedsuppliernetwork.com');

INSERT INTO Inventory_Order (MedicationID, SupplierID, QuantityOrdered, OrderDate, ReceivedDate) VALUES
(1, 1, 100, '2024-04-01', '2024-04-05'),
(2, 2, 200, '2024-04-02', '2024-04-07'),
(3, 3, 150, '2024-04-03', '2024-04-08'),
(4, 4, 250, '2024-04-04', '2024-04-09'),
(5, 5, 120, '2024-04-05', '2024-04-10'),
(6, 1, 180, '2024-04-06', '2024-04-11'),
(7, 2, 160, '2024-04-07', '2024-04-12'),
(8, 3, 140, '2024-04-08', '2024-04-13'),
(9, 4, 170, '2024-04-09', '2024-04-14'),
(10, 5, 90, '2024-04-10', '2024-04-15'),
(11, 1, 110, '2024-04-11', '2024-04-16'),
(12, 2, 130, '2024-04-12', '2024-04-17'),
(13, 3, 100, '2024-04-13', '2024-04-18'),
(14, 4, 105, '2024-04-14', '2024-04-19'),
(15, 5, 115, '2024-04-15', '2024-04-20'),
(16, 1, 125, '2024-04-16', '2024-04-21'),
(17, 2, 135, '2024-04-17', '2024-04-22'),
(18, 3, 145, '2024-04-18', '2024-04-23'),
(19, 4, 155, '2024-04-19', '2024-04-24'),
(20, 5, 165, '2024-04-20', '2024-04-25');