DROP PROCEDURE IF EXISTS ini_turn_p;

DELIMITER //
CREATE PROCEDURE ini_turn_p (IN idC INT,IN idU INT)
  BEGIN
    UPDATE Conductor SET trabajando = 1 WHERE Conductor.id = idC;
    UPDATE Unidad SET activo = 1 WHERE Unidad.id = idU;
  END //
DELIMITER ;