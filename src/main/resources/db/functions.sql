CREATE FUNCTION `getLatitude`
  (GPStext text) RETURNS float
  BEGIN
    DECLARE coordinate float;
    SET coordinate = NULL;
    SET coordinate = SUBSTRING_INDEX(GPStext, ',', 1);
    RETURN coordinate;
  END;


CREATE FUNCTION `getLongitude`
  (GPStext text) RETURNS float
  BEGIN
    DECLARE coordinate float;
    SET coordinate = NULL;
    SET coordinate = SUBSTRING_INDEX(GPStext, ',', -1);
    RETURN coordinate;
  END;


CREATE FUNCTION `CalcularLatLngDistanciaKm`
  (latInicial FLOAT, lngInicial FLOAT, latFinal FLOAT, lngFinal FLOAT)
  RETURNS FLOAT
DETERMINISTIC
  BEGIN
    RETURN 6371 * 2 * ASIN(SQRT(
                               POWER(SIN((latInicial - abs(latFinal)) * pi()/180 / 2),
                                     2) + COS(latInicial * pi()/180 ) * COS(abs(latFinal) *
                                                                            pi()/180) * POWER(SIN((lngInicial - lngFinal) *
                                                                                                  pi()/180 / 2), 2) ));
  END;