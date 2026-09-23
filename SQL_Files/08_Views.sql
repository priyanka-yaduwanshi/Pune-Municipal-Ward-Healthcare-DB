USE punehealthcaredb;

-- 1. Ward-wise facility summary
CREATE VIEW Ward_Facility_Summary AS
SELECT
    w.Ward_No,
    w.Ward_Name,
    w.City_Name,
    COUNT(f.Facility_ID) AS Total_Facilities
FROM Wards w
LEFT JOIN Facilities f
    ON w.Ward_No = f.Ward_No
GROUP BY
    w.Ward_No,
    w.Ward_Name,
    w.City_Name;

-- Test View 1
SELECT * FROM Ward_Facility_Summary;


-- 2. Inventory status summary
CREATE VIEW Inventory_Status_Summary AS
SELECT
    Status,
    COUNT(*) AS Total_Items,
    SUM(Quantity) AS Total_Quantity,
    AVG(Quantity) AS Average_Quantity
FROM Inventory
GROUP BY Status;

-- Test View 2
SELECT * FROM Inventory_Status_Summary;