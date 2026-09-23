USE punehealthcaredb;

DELIMITER //

CREATE PROCEDURE UpdateInventoryQuantity(
    IN p_Item_ID INT,
    IN p_Quantity INT
)
BEGIN
    UPDATE Inventory
    SET Quantity = p_Quantity
    WHERE Item_ID = p_Item_ID;
END //

DELIMITER ;

-- Test the procedure
CALL UpdateInventoryQuantity(1, 5);

SELECT *
FROM Inventory
WHERE Item_ID = 1;