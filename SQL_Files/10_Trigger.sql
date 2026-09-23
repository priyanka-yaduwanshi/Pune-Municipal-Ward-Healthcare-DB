USE punehealthcaredb;

DELIMITER //

CREATE TRIGGER trg_update_inventory_status
BEFORE UPDATE ON Inventory
FOR EACH ROW
BEGIN
    IF NEW.Quantity = 0 THEN
        SET NEW.Status = 'Out of Stock';
    ELSEIF NEW.Quantity < 20 THEN
        SET NEW.Status = 'Low Stock';
    ELSE
        SET NEW.Status = 'Available';
    END IF;
END //

DELIMITER ;

-- Test the trigger
UPDATE Inventory
SET Quantity = 0
WHERE Item_ID = 1;

SELECT *
FROM Inventory
WHERE Item_ID = 1;