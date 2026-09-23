USE punehealthcaredb;

-- 1. Display all facilities
SELECT * FROM Facilities;

-- 2. Display facilities in a specific ward
SELECT *
FROM Facilities
WHERE Ward_No = 1;

-- 3. Display facilities alphabetically
SELECT *
FROM Facilities
ORDER BY Hospital_Name;

-- 4. Display facilities with latitude and longitude
SELECT
    Facility_ID,
    Hospital_Name,
    Latitude,
    Longitude
FROM Facilities;

-- 5. Display inventory items with quantity greater than 50
SELECT *
FROM Inventory
WHERE Quantity > 50;