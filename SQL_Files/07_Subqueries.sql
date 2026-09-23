USE punehealthcaredb;

-- 1. Correlated subquery:
-- Facilities having inventory quantity above
-- the average quantity of their own ward
SELECT
    f.Facility_ID,
    f.Hospital_Name,
    f.Ward_No,
    i.Quantity
FROM Facilities f
JOIN Inventory i
    ON f.Facility_ID = i.Facility_ID
WHERE i.Quantity > (
    SELECT AVG(i2.Quantity)
    FROM Inventory i2
    JOIN Facilities f2
        ON f2.Facility_ID = i2.Facility_ID
    WHERE f2.Ward_No = f.Ward_No
);


-- 2. Correlated subquery:
-- Facilities belonging to wards having more than one facility
SELECT
    f.Facility_ID,
    f.Hospital_Name,
    f.Ward_No
FROM Facilities f
WHERE (
    SELECT COUNT(*)
    FROM Facilities f2
    WHERE f2.Ward_No = f.Ward_No
) > 1;