SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS Cliente;
create table Cliente
(
	idCliente int auto_increment
		primary key,
	nombreCliente varchar(128) not null,
	apellidoCliente varchar(128) not null,
	email varchar(20) null,
	telefono varchar(13) null
)
;
DROP TABLE IF EXISTS Conductor;
create table Conductor
(
	id int auto_increment
		primary key,
	nombreConductor varchar(128) not null,
	apellidoConductor varchar(128) not null,
	fechaNacimientoConductor date not null,
	numeroLincenciaConducir varchar(128) not null,
	fechaCaducidad date not null,
	trabajando tinyint(1) default '1' not null
)
;
DROP TABLE IF EXISTS Estado;
create table Estado
(
	id int auto_increment
		primary key,
	nombreEstado varchar(128) not null,
	constraint status_ak_1
		unique (nombreEstado)
)
;
DROP TABLE IF EXISTS EstadoViajeTaxi;
create table EstadoViajeTaxi
(
	id int auto_increment
		primary key,
	idViajeTaxi int not null,
	idEstado int not null,
	tiempoEstado timestamp default CURRENT_TIMESTAMP not null,
	idCliente int null,
	idTurno int null,
	detalleEstado text null,
	constraint cab_ride_status_status
		foreign key (idEstado) references Estado (id),
	constraint cab_ride_status_cc_agent
		foreign key (idCliente) references Cliente (idCliente)
)
;

create index cab_ride_status_cab_ride
	on EstadoViajeTaxi (idViajeTaxi)
;

create index cab_ride_status_cc_agent
	on EstadoViajeTaxi (idCliente)
;

create index cab_ride_status_shift
	on EstadoViajeTaxi (idTurno)
;

create index cab_ride_status_status
	on EstadoViajeTaxi (idEstado)
;
DROP TABLE IF EXISTS ModeloCarro;
create table ModeloCarro
(
	id int auto_increment
		primary key,
	nombreModelo varchar(64) not null,
	descripcionModelo text not null,
	constraint car_model_ak_1
		unique (nombreModelo)
)
;
DROP TABLE IF EXISTS TipoPago;
create table TipoPago
(
	id int auto_increment
		primary key,
	nombreTipoPago varchar(128) not null,
	constraint payment_type_ak_1
		unique (nombreTipoPago)
)
;
DROP TABLE IF EXISTS Turno;
create table Turno
(
	id int auto_increment
		primary key,
	idConductor int not null,
	idUnidad int not null,
	horaInicioTurno timestamp null,
	horaFinTurno timestamp null,
	constraint drives_driver
		foreign key (idConductor) references Conductor (id)
)
;

create index drives_cab
	on Turno (idUnidad)
;

create index drives_driver
	on Turno (idConductor)
;

alter table EstadoViajeTaxi
	add constraint cab_ride_status_shift
		foreign key (idTurno) references Turno (id)
;
DROP TABLE IF EXISTS Unidad;
create table Unidad
(
	id int auto_increment
		primary key,
	placa varchar(32) not null,
	idModeloCarro int not null,
	annoFabrica int not null,
	idConductor int null,
	activo tinyint(1) default '1' not null,
	constraint cab_ak_1
		unique (placa),
	constraint cab_car_model
		foreign key (idModeloCarro) references ModeloCarro (id),
	constraint cab_driver
		foreign key (idConductor) references Conductor (id)
)
;

create index cab_car_model
	on Unidad (idModeloCarro)
;

create index cab_driver
	on Unidad (idConductor)
;

alter table Turno
	add constraint drives_cab
		foreign key (idUnidad) references Unidad (id)
;
DROP TABLE IF EXISTS ViajeTaxi;
create table ViajeTaxi
(
	id int auto_increment
		primary key,
	idTurno int null,
	tiempoInicioViaje timestamp null,
	tiempoFinViaje timestamp null,
	direccionInicialViaje text null,
	puntoInicialGPSViaje text null,
	direccionDestinoViaje text null,
	puntoFinalGPSViaje text null,
	cancelado tinyint(1) default '0' not null,
	idPago int null,
	precio decimal(10,2) null,
	constraint cab_ride_shift
		foreign key (idTurno) references Turno (id),
	constraint cab_ride_payment_type
		foreign key (idPago) references TipoPago (id)
)
;

create index cab_ride_payment_type
	on ViajeTaxi (idPago)
;

create index cab_ride_shift
	on ViajeTaxi (idTurno)
;

alter table EstadoViajeTaxi
	add constraint cab_ride_status_cab_ride
		foreign key (idViajeTaxi) references ViajeTaxi (id)
;

create or replace view conductores as
SELECT
    `taxi_feik`.`Conductor`.`id`                AS `id`,
    `taxi_feik`.`Conductor`.`nombreConductor`   AS `nombreConductor`,
    `taxi_feik`.`Conductor`.`apellidoConductor` AS `apellidoConductor`,
    `taxi_feik`.`Unidad`.`placa`                AS `placa`
  FROM (`taxi_feik`.`Conductor`
    JOIN `taxi_feik`.`Unidad` ON ((`taxi_feik`.`Unidad`.`idConductor` = `taxi_feik`.`Conductor`.`id`)));

create or replace view viajes as
SELECT
    `taxi_feik`.`Cliente`.`idCliente`               AS `idCliente`,
    `taxi_feik`.`Cliente`.`nombreCliente`           AS `nombreCliente`,
    `taxi_feik`.`ViajeTaxi`.`direccionDestinoViaje` AS `direccionDestinoViaje`,
    `taxi_feik`.`ViajeTaxi`.`precio`                AS `precio`
  FROM ((`taxi_feik`.`Cliente`
    JOIN `taxi_feik`.`EstadoViajeTaxi`
      ON ((`taxi_feik`.`Cliente`.`idCliente` = `taxi_feik`.`EstadoViajeTaxi`.`idCliente`))) JOIN `taxi_feik`.`ViajeTaxi`
      ON ((`taxi_feik`.`EstadoViajeTaxi`.`idViajeTaxi` = `taxi_feik`.`ViajeTaxi`.`id`)));


SET FOREIGN_KEY_CHECKS=1;