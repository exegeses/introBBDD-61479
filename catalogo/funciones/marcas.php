<?php

    function listarMarcas()
    {
        $link = conectar();
        $sql = "SELECT idMarca, mkNombre 
                    FROM marcas";
        try {
            $resultado = mysqli_query( $link, $sql );
        }catch ( Exception $e )
        {
            $resultado = false;
            echo $e->getMessage();
        }
        return $resultado;
    }