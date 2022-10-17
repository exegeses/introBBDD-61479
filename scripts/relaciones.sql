-- Relaciones entre tablas

-- Table relation

-- traer nombre, precio y nombre-de-la-marca
SELECT prdNombre, prdPrecio, mkNombre
    FROM productos, marcas
    WHERE productos.idMarca = marcas.idMarca;

-- traer nombre, precio, nombre-de-la-marca y nombre-de-la-categoria
SELECT prdNombre, prdPrecio, mkNombre, catNombre
FROM productos, marcas, categorias
WHERE productos.idMarca = marcas.idMarca
  AND productos.idCategoria = categorias.idCategoria;


-- Joins
-- traer nombre, precio y nombre-de-la-marca

SELECT prdNombre, prdPrecio, mkNombre
FROM productos
 JOIN marcas
   ON productos.idMarca = marcas.idMarca;

-- traer nombre, precio, nombre-de-la-marca y nombre-de-la-categoria

SELECT prdNombre, prdPrecio, mkNombre, catNombre
FROM productos
 JOIN marcas
  ON productos.idMarca = marcas.idMarca
 JOIN categorias
  ON productos.idCategoria = categorias.idCategoria;
