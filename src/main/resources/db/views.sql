CREATE VIEW `viaje` AS
  select Cliente.idCliente, Unidad.placa, Turno.id , ViajeTaxi.direccionInicialViaje
  from EstadoViajeTaxi
    inner join cliente on EstadoViajeTaxi.idCliente = Cliente.idCliente
    inner join Turno on EstadoViajeTaxi.idTurno = Turno.id
    inner join Unidad on Turno.idUnidad= Unidad.id;


CREATE VIEW ConductorModelo AS
  SELECT Conductor.nombreConductor, ModeloCarro.nombreModelo
  FROM Unidad
    INNER JOIN ModeloCarro ON Unidad.idModeloCarro = ModeloCarro.id

    INNER JOIN Conductor ON Unidad.idConductor = Conductor.id;

CREATE VIEW conductor as
  SELECT  Conductor.nombreConductor,
    Conductor.apellidoConductor,
    Conductor.numeroLincenciaConducir
  From Conductor;

CREATE
  ALGORITHM = UNDEFINED
  DEFINER = `root`@`localhost`
  SQL SECURITY DEFINER
VIEW `taxi_feik`.`viajes` AS
  SELECT
    `taxi_feik`.`Cliente`.`idCliente` AS `idCliente`,
    `taxi_feik`.`Cliente`.`nombreCliente` AS `nombreCliente`,
    `taxi_feik`.`ViajeTaxi`.`direccionDestinoViaje` AS `direccionDestinoViaje`,
    `taxi_feik`.`ViajeTaxi`.`precio` AS `precio`
  FROM
    ((`taxi_feik`.`Cliente`
      JOIN `taxi_feik`.`EstadoViajeTaxi` ON ((`taxi_feik`.`Cliente`.`idCliente` = `taxi_feik`.`EstadoViajeTaxi`.`idCliente`)))
      JOIN `taxi_feik`.`ViajeTaxi` ON ((`taxi_feik`.`EstadoViajeTaxi`.`idViajeTaxi` = `taxi_feik`.`ViajeTaxi`.`id`)))
