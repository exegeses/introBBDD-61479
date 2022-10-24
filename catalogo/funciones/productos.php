<?php

    function listarProductos()
    {
        $link = conectar();
        /*$sql = "SELECT prdImagen, prdNombre, prdPrecio,
                       mkNombre, catNombre  
	                FROM productos, marcas, categorias
	                WHERE productos.idMarca = marcas.idMarca
                     AND productos.idCategoria = categorias.idCategoria";*/
        $sql = "SELECT prdImagen, prdNombre, prdPrecio, mkNombre, catNombre
                    FROM productos
                    JOIN marcas
                      ON productos.idMarca = marcas.idMarca
                    JOIN categorias
                      ON productos.idCategoria = categorias.idCategoria";
        try {
            $resultado = mysqli_query( $link, $sql );
        }
        catch ( Exception $e )
        {
            echo $e->getMessage();
            return false;
        }
        return $resultado;
    }