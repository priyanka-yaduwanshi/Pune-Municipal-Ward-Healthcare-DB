USE punehealthcaredb;

-- 1. ROLLBACK demonstration
START TRANSACTION;

UPDATE Inventory
SET Quantity = Quantity + 10
WHERE Item_ID = 1;

SELECT *
FROM Inventory
WHERE Item_ID = 1;

ROLLBACK;


-- 2. COMMIT demonstration
START TRANSACTION;

UPDATE Inventory
SET Quantity = Quantity + 10
WHERE Item_ID = 1;

COMMIT;

SELECT *
FROM Inventory
WHERE Item_ID = 1;