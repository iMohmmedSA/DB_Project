DROP TABLE Prescriptions;
DROP TABLE Inventory_Orders;
DROP TABLE Medications;
DROP TABLE Suppliers;
DROP TABLE Patients;
DROP TABLE Pharmacists;

CREATE TABLE Pharmacists (
    PharmacistID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactInfo VARCHAR(255)
);

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactInfo VARCHAR(255),
    InsuranceDetails VARCHAR(255)
);

CREATE TABLE Medications (
    MedicationID INT PRIMARY KEY,
    Name VARCHAR(255),
    Manufacturer VARCHAR(255),
    StockLevel INT,
    PricePerUnit DECIMAL(10, 2)
);

CREATE TABLE Prescriptions (
    PrescriptionID INT PRIMARY KEY,
    PatientID INT,
    PharmacistID INT,
    DatePrescribed DATE,
    MedicationID INT,
    Duration VARCHAR(255),
    RefillsRemaining INT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (PharmacistID) REFERENCES Pharmacists(PharmacistID),
    FOREIGN KEY (MedicationID) REFERENCES Medications(MedicationID)
);

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactInfo VARCHAR(255)
);

CREATE TABLE Inventory_Orders (
    OrderID INT PRIMARY KEY,
    MedicationID INT,
    SupplierID INT,
    QuantityOrdered INT,
    OrderDate DATE,
    ReceivedDate DATE,
    FOREIGN KEY (MedicationID) REFERENCES Medications(MedicationID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);
