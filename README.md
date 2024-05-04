# DB_Project

### Key Entities (Tables)

1.  **Pharmacists**
    
    *   **PharmacistID** (Primary Key)
    *   **FirstName**
    *   **LastName**
    *   ~~**LicenseNumber**~~
    *   ~~**ContactInfo**~~
    *   **PharmacyID** (Foreign Key)

2.  **Patients**
    *   **PatientID** (Primary Key)
    *   **FirstName**
    *   **LastName**
    *   ~~**DateOfBirth**~~
    *   **ContactInfo**
    *   ~~**InsuranceDetails**~~

3.  **Prescriptions**
    *   **PrescriptionID** (Primary Key)
    *   **PatientID** (Foreign Key)
    *   **PharmacistID** (Foreign Key)
    *   **DatePrescribed**
    *   **MedicationID** (Foreign Key)
    *   **Dosage**
    *   **Frequency**
    *   **Duration**
    *   **RefillsRemaining**

4.  **Medications**
    *   **MedicationID** (Primary Key)
    *   **Name**
    *   **GenericName**
    *   **Manufacturer**
    *   **StockLevel**
    *   **MinimumStockLevel**
    *   **PricePerUnit**

5.  **Suppliers**
    *   **SupplierID** (Primary Key)
    *   **Name**
    *   **ContactInfo**
    *   **Address**

6.  **Inventory Orders**
    *   **OrderID** (Primary Key)
    *   **MedicationID** (Foreign Key)
    *   **SupplierID** (Foreign Key)
    *   **QuantityOrdered**
    *   **OrderDate**
    *   **ReceivedDate**