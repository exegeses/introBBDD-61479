CREATE TABLE destinos
(
    idDestino tinyint primary key auto_increment not null,
    destNombre varchar (100) not null,
    idRegion tinyint not null,
    destPrecio float(9,2) not null,
    destAsientos tinyint not null,
    destDisponibles tinyint not null,
    destActivo boolean not null
);