DELIMITER //
CREATE TRIGGER fin_turn
BEFORE UPDATE ON Turno
FOR EACH ROW
  BEGIN
    UPDATE Conductor SET trabajando = 0 WHERE Conductor.id = NEW.idConductor;
    UPDATE Unidad SET activo = 0 WHERE Unidad.id = NEW.idUnidad;
  END;//
DELIMITER ;



DELIMITER //
CREATE TRIGGER ini_turn
BEFORE INSERT ON Turno
FOR EACH ROW
  BEGIN
    CALL ini_turn_p(NEW.idConductor,NEW.idUnidad);
  END //
DELIMITER ;




DELIMITER $$
CREATE TRIGGER checkFormatoGPS BEFORE INSERT ON ViajeTaxi
FOR EACH ROW
  BEGIN
    IF (NEW.puntoInicialGPSViaje REGEXP '^[-+]?([1-8]?\d(\.\d+)?|90(\.0+)?),\s*[-+]?(180(\.0+)?|((1[0-7]\d)|([1-9]?\d))(\.\d+)?)$' ) = 0 THEN
      SIGNAL SQLSTATE '79845'
      SET MESSAGE_TEXT = 'Formato erroneo de gps en puntoInicialGPSViaje';
    ELSEIF (NEW.puntoFinalGPSViaje REGEXP '^[-+]?([1-8]?\d(\.\d+)?|90(\.0+)?),\s*[-+]?(180(\.0+)?|((1[0-7]\d)|([1-9]?\d))(\.\d+)?)$' ) = 0 THEN
      SIGNAL SQLSTATE '79846'
      SET MESSAGE_TEXT = 'Formato erroneo de gps en puntoFinalGPSViaje';
    END IF;
  END$$
DELIMITER ;


DELIMITER $$

CREATE TRIGGER validar_year_carro
BEFORE INSERT ON Unidad
FOR EACH ROW
  BEGIN
    If exists(SELECT annoFabrica FROM Unidad WHERE annoFabrica<2000) THEN
      signal SQLSTATE '45000';
    END IF;

  END $$;

DELIMITER ;
