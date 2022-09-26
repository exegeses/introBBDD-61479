# Consultas en SQL

> Para realizar consultas en SQL utilizamos 
> el comando ***SELECT*** 

    SELECT nCampo, nCampo
        FROM  tabla


> Sólo dos columnas - TODOS los registros

    SELECT destNombre, destPrecio
        FROM destinos;

> Filtros.  Para comenzar a filtrar información
> y que no nos traiga todos los registros,
> utilizamos la palabra WHERE

      SELECT destNombre, destPrecio
        FROM destinos
        WHERE destPrecio <= 8000;



    SELECT destNombre, destPrecio
	FROM destinos
	WHERE destPrecio <= 8000
      AND destPrecio >= 6600;


    SELECT destNombre, destPrecio
    FROM destinos
    WHERE destPrecio
    BETWEEN 6600 AND  8000;

    SELECT destNombre, destPrecio
    FROM destinos
    WHERE idRegion = 5
    AND destPrecio <= 7000;
