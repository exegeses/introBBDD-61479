-- -- INNER JOIN
-- no trae los nulos
SELECT nombre, apellido, depNombre
FROM empleados
 JOIN departamentos
   ON empleados.idDepartamento = departamentos.idDepartamento;

-- -- LEFT JOIN
-- -- SI trae los nulos
SELECT nombre, apellido, depNombre
FROM empleados
 LEFT JOIN departamentos
   ON empleados.idDepartamento = departamentos.idDepartamento;

-- -- RIGHT JOIN
-- -- trae TODOS los datos de la segunda tabla
-- -- pero no todos los de la primera
SELECT nombre, apellido, depNombre
FROM empleados
 RIGHT JOIN departamentos
   ON empleados.idDepartamento = departamentos.idDepartamento;

