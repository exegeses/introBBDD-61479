# Relaciones entre tablas 

> Si queremos traer datos de más de una tabla 
> debemos relacionar el campo en común

    SELECT destNombre, destPrecio, regNombre
    FROM destinos, regiones
    WHERE destinos.idRegion = regiones.idRegion

