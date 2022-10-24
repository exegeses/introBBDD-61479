<?php

    const SERVER = 'localhost';
    const USUARIO = 'root';
    const CLAVE = 'root';
    const BASE = 'introDB61479';

    function conectar()
    {
        $link = mysqli_connect(
            SERVER,
            USUARIO,
            CLAVE,
            BASE
        );
        return $link;
    }