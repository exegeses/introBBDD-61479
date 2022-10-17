# Consultas usando LIKE

> Cuando nostros queremos traer datos de un tabla
> y tenemos sólo una palabra o parte del nombre, 
> podemos utilizar una consulta con la palabra reservada LIKE 


> traer nombre, precio y descripción 
> d´´onde el nombre contenga la palabra 'Marshall'
 
    SELECT prdNombre, prdPrecio, prdDescripcion  
    FROM productos  
    WHERE prdNombre LIKE '%Marshall%';


> traer nombre, precio y descripción
> d´´onde ladescripción contenga la palabra 'bluetooth'

    SELECT prdNombre, prdPrecio, prdDescripcion  
    FROM productos  
    WHERE prdDescripcion LIKE '%bluetooth%';

> Ahora con más tablas
> nombre, precio, marca, descripción
> dónde en la descripción contenga 'Altavoz'
 
    SELECT prdNombre, prdPrecio, mkNombre, prdDescripcion  
    FROM productos, marcas  
    WHERE prdDescripcion LIKE '%Altavoz%'  
    AND productos.idMarca = marcas.idMarca;

> Variante usando JOIN
    
    SELECT prdNombre, prdPrecio, mkNombre, prdDescripcion  
	FROM productos  
    JOIN marcas  
      ON productos.idMarca = marcas.idMarca  
    WHERE prdDescripcion LIKE '%Altavoz%';  

> nombre, precio, marca, categoria y descripción
> dónde en la descripción contenga 'Altavoz'
 
    SELECT prdNombre, prdPrecio, mkNombre, catNombre, prdDescripcion  
    FROM productos, marcas, categorias  
    WHERE prdDescripcion like "%Altavoz%"  
     AND productos.idMarca=marcas.idMarca  
     AND productos.idCategoria=categorias.idCategoria;

> nombre, precio, marca, categoria y descripción
> dónde en la descripción contenga 'Altavoz'
> usando JOIN

    SELECT prdNombre, prdPrecio, mkNombre, catNombre, prdDescripcion  
    FROM productos  
    JOIN marcas  
    ON productos.idMarca = marcas.idMarca  
    JOIN categorias  
    ON productos.idCategoria = categorias.idCategoria  
    where prdDescripcion LIKE '%Altavoz%';

