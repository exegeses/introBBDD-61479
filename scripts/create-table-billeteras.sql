-- Crear tabla billeteras

CREATE TABLE billeteras
(
    id INT primary key auto_increment not null,
    nombre varchar( 100 ) not null,
    precio float( 9, 2 ) not null,
    stock INT not null
)
