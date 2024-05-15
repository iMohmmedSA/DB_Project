### 1\. **Pharmacist Table**

*   **PharmacistID**:
    *   Auto-incremented to ensure uniqueness.
    *   Used as a primary key for identifying pharmacist records uniquely.
*   **Name**:
    *   Store the full name of the pharmacist.
    *   Ensure the field supports common and special characters to accommodate diverse names.
*   **ContactInfo**:
    *   Store contact details, including phone number and email address.
    *   Validate format to ensure data entered is in correct phone number or email format.

### 2\. **Patient Table**

*   **PatientID**:
    *   Auto-incremented and unique.
    *   Primary key for patient records.
*   **Name**:
    *   Capture full name as entered, supporting various character types.
*   **ContactInfo**:
    *   Includes phone numbers and email addresses, requiring validation for format correctness.
*   **InsuranceDetails**:
    *   Store detailed text describing patient's insurance coverage.
    *   Field must allow for variable-length text to accommodate different insurance plan details.

### 3\. **Medication Table**

*   **MedicationID**:
    *   Unique identifier for each medication, auto-incremented.
*   **Name**:
    *   Accurately record medication names.
    *   Support for brand and generic names.
*   **Manufacturer**:
    *   Record the name of the medication manufacturer.
    *   Support various character types for global manufacturer names.
*   **StockLevel**:
    *   Integer to track current stock quantity.
    *   Should trigger alerts when stock falls below a predefined threshold.
*   **PricePerUnit**:
    *   Decimal field to represent the cost per unit, accommodating currency precision.

### 4\. **Prescription Table**

*   **PrescriptionID**:
    *   Unique, auto-incremented identifier for each prescription.
*   **PatientID, PharmacistID, MedicationID**:
    *   Foreign keys linking to respective tables.
    *   Integrity constraints to ensure valid references.
*   **DatePrescribed**:
    *   Store the date the prescription was made.
    *   Ensure the date format is consistently stored (e.g., YYYY-MM-DD).
*   **Duration**:
    *   Text field describing the length of time the medication is to be taken.
*   **RefillsRemaining**:
    *   Integer indicating the number of refills left; requires validation to ensure non-negative values.

### 5\. **Supplier Table**

*   **SupplierID**:
    *   Primary key, auto-incremented for uniqueness.
*   **Name**:
    *   Store the supplier's full legal name.
*   **ContactInfo**:
    *   Record contact details similar to the pharmacist's, including validation for phone and email formats.

### 6\. **Inventory\_Order Table**

*   **OrderID**:
    *   Unique, auto-incremented identifier for tracking orders.
*   **MedicationID, SupplierID**:
    *   Foreign keys ensuring valid connections to the Medication and Supplier tables.
*   **QuantityOrdered**:
    *   Integer to track how many units of a medication are ordered.
*   **OrderDate, ReceivedDate**:
    *   Date fields capturing when the order was placed and when it was received, respectively.
    *   Require consistent date formatting.
