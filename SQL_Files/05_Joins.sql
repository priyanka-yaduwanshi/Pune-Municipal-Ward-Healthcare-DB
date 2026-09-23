USE punehealthcaredb;

-- 1. INNER JOIN
SELECT
    f.Facility_ID,
    f.Hospital_Name,
    f.Facility_Type,
    w.Ward_No,
    w.Ward_Name,
    w.City_Name
FROM Facilities f
INNER JOIN Wards w
    ON f.Ward_No = w.Ward_No;


-- 2. LEFT JOIN
SELECT
    w.Ward_No,
    w.Ward_Name,
    w.City_Name,
    f.Facility_ID,
    f.Hospital_Name,
    f.Facility_Type
FROM Wards w
LEFT JOIN Facilities f
    ON w.Ward_No = f.Ward_No;


-- 3. RIGHT JOIN
SELECT
    f.Facility_ID,
    f.Hospital_Name,
    f.Facility_Type,
    w.Ward_No,
    w.Ward_Name,
    w.City_Name
FROM Facilities f
RIGHT JOIN Wards w
    ON f.Ward_No = w.Ward_No;


-- 4. FULL OUTER JOIN equivalent in MySQL
SELECT
    f.Facility_ID,
    f.Hospital_Name,
    w.Ward_No,
    w.Ward_Name,
    w.City_Name
FROM Facilities f
LEFT JOIN Wards w
    ON f.Ward_No = w.Ward_No

UNION

SELECT
    f.Facility_ID,
    f.Hospital_Name,
    w.Ward_No,
    w.Ward_Name,
    w.City_Name
FROM Facilities f
RIGHT JOIN Wards w
    ON f.Ward_No = w.Ward_No;


-- 5. Four-table JOIN
SELECT
    w.Ward_No,
    w.Ward_Name,
    w.City_Name,
    f.Facility_ID,
    f.Hospital_Name,
    f.Facility_Type,
    f.Latitude,
    f.Longitude,
    s.Staff_ID,
    s.Staff_Name,
    s.Role,
    i.Item_ID,
    i.Item_Name,
    i.Quantity,
    i.Status
FROM Wards w
INNER JOIN Facilities f
    ON w.Ward_No = f.Ward_No
INNER JOIN Staff s
    ON f.Facility_ID = s.Facility_ID
INNER JOIN Inventory i
    ON f.Facility_ID = i.Facility_ID;