# DB_Project

### Key Entities (Tables)

1.  **Pharmacists**
    *   **PharmacistID** (Primary Key)
    *   **Name**
    *   **ContactInfo**

2.  **Patients**
    *   **PatientID** (Primary Key)
    *   **Name**
    *   **ContactInfo**
    *   **InsuranceDetails**

3.  **Prescriptions**
    *   **PrescriptionID** (Primary Key)
    *   **PatientID** (Foreign Key)
    *   **PharmacistID** (Foreign Key)
    *   **DatePrescribed**
    *   **MedicationID** (Foreign Key)
    *   **Duration**
    *   **RefillsRemaining**

4.  **Medications**
    *   **MedicationID** (Primary Key)
    *   **Name**
    *   **Manufacturer**
    *   **StockLevel**
    *   **PricePerUnit**

5.  **Suppliers**
    *   **SupplierID** (Primary Key)
    *   **Name**
    *   **ContactInfo**

6.  **Inventory Orders**
    *   **OrderID** (Primary Key)
    *   **MedicationID** (Foreign Key)
    *   **SupplierID** (Foreign Key)
    *   **QuantityOrdered**
    *   **OrderDate**
    *   **ReceivedDate**
