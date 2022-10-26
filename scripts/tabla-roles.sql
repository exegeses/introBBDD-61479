-- creación de tabla roles
CREATE TABLE roles
(
    idRol TINYINT primary key auto_increment not null,
    rol varchar(30) not null
);

-- insertar datos en tabla roles
INSERT INTO roles
    VALUES
            ( DEFAULT, 'Administrador' ),
            ( DEFAULT, 'Supervisor'),
            ( DEFAULT, 'Usuario'),
            ( DEFAULT, 'Invitado');



