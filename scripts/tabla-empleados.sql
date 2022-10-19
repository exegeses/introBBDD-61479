CREATE TABLE empleados
(
    idEmpleado INT primary key auto_increment not null,
    nombre varchar(45) not null,
    apellido varchar(45) not null,
    dni INT not null,
    nroLegajo INT not null,
    sueldo INT not null,
    telefono INT,
    idDepartamento tinyint
);

-- ------------------------
-- volcado de datos
-- ------------------------
INSERT INTO `empleados`
    VALUES
        (1,'Juan','Quintana',36232465,36232465,25000,11234567,1),
        (2,'Juanita','Luna',36232466,36232466,25000,11234568,1),
        (3,'Carlos','Alarcón',46232464,46232464,26000,11334568,2),
        (4,'Dina','Paceros',46232463,46232463,20000,11334565,3),
        (5,'Pedro','Díaz',41232463,41232463,22000,11334865,4),
        (6,'Wilson','Fernández',26232466,6232466,45000,11534568,5),
        (7,'Tina','Ponce',42832463,42832463,20000,11332565,NULL),
        (8,'Mario','Gonzáles',43832563,43832563,20000,11734768,NULL);
