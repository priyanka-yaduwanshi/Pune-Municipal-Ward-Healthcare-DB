USE punehealthcaredb;

-- 1. EXPLAIN before index
EXPLAIN
SELECT
    f.Facility_ID,
    f.Hospital_Name,
    w.Ward_Name
FROM Facilities f
JOIN Wards w
    ON f.Ward_No = w.Ward_No
WHERE f.Hospital_Name = 'Dr. Naidu Hospital';


-- Create non-primary index
CREATE INDEX idx_facility_hospital_name
ON Facilities(Hospital_Name);


-- EXPLAIN after index
EXPLAIN
SELECT
    f.Facility_ID,
    f.Hospital_Name,
    w.Ward_Name
FROM Facilities f
JOIN Wards w
    ON f.Ward_No = w.Ward_No
WHERE f.Hospital_Name = 'Dr. Naidu Hospital';


-- 2. EXPLAIN before index
EXPLAIN
SELECT
    f.Hospital_Name,
    i.Item_Name,
    i.Quantity
FROM Facilities f
JOIN Inventory i
    ON f.Facility_ID = i.Facility_ID
WHERE i.Quantity >= 90;


-- Create non-primary index
CREATE INDEX idx_inventory_quantity
ON Inventory(Quantity);


-- EXPLAIN after index
EXPLAIN
SELECT
    f.Hospital_Name,
    i.Item_Name,
    i.Quantity
FROM Facilities f
JOIN Inventory i
    ON f.Facility_ID = i.Facility_ID
WHERE i.Quantity >= 90;