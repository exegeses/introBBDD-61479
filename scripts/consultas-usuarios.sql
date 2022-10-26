-- obtener id, nombre, apellido y el rol
-- utilizando table relation
SELECT idUsuario, nombre, apellido, rol
  FROM usuarios, roles
  WHERE usuarios.idRol = roles.idRol;

-- obtener id, nombre, apellido y el rol
-- utilizando join
SELECT idUsuario, nombre, apellido, rol
  FROM usuarios
  JOIN roles
   ON usuarios.idRol = roles.idRol;

-- obtener id, nombre, apellido y el rol
-- de los usuarios de Pied Piper
SELECT idUsuario, nombre, apellido, rol
FROM usuarios
 JOIN roles
  ON usuarios.idRol = roles.idRol
WHERE email LIKE '%piedpiper%';

-- obtener listado de usuarios nacidos en 1998
SELECT idUsuario, nombre, apellido
FROM usuarios
WHERE fechaNacimiento
    BETWEEN '1998-01-001' AND '1998-12-31';

SELECT idUsuario, nombre, apellido
FROM usuarios
WHERE YEAR(fechaNacimiento) = 1998;