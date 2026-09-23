USE punehealthcaredb;

-- 1. Count facilities in each ward
SELECT
    w.Ward_No,
    w.Ward_Name,
    COUNT(f.Facility_ID) AS Total_Facilities
FROM Wards w
LEFT JOIN Facilities f
    ON w.Ward_No = f.Ward_No
GROUP BY w.Ward_No, w.Ward_Name;


-- 2. Average inventory quantity for each facility
SELECT
    f.Facility_ID,
    f.Hospital_Name,
    AVG(i.Quantity) AS Average_Quantity
FROM Facilities f
JOIN Inventory i
    ON f.Facility_ID = i.Facility_ID
GROUP BY f.Facility_ID, f.Hospital_Name;


-- 3. Inventory summary by item
SELECT
    Item_Name,
    SUM(Quantity) AS Total_Quantity,
    AVG(Quantity) AS Average_Quantity,
    MAX(Quantity) AS Maximum_Quantity,
    MIN(Quantity) AS Minimum_Quantity
FROM Inventory
GROUP BY Item_Name;


-- 4. Wards having more than one facility
SELECT
    w.Ward_Name,
    COUNT(f.Facility_ID) AS Facility_Count
FROM Wards w
JOIN Facilities f
    ON w.Ward_No = f.Ward_No
GROUP BY w.Ward_No, w.Ward_Name
HAVING COUNT(f.Facility_ID) > 1;