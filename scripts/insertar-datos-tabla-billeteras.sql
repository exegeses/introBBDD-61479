-- Insertar datos en tabla billeteras
--    INSERT INTO nombreTabla
--          ( campo1, campo2, campo3, ... )
--      VALUES
--          ( vCampo1, vCampo2, vCampo3, ... )

INSERT INTO billeteras
        ( id, nombre, precio, stock )
    VALUES
        ( DEFAULT, 'Ledger Nano S', 16000, 30 );

-- insertar más de un dato a la vez

INSERT INTO billeteras
    ( id, nombre, precio, stock )
VALUES
    ( DEFAULT, 'Trezor One', 19500, 30 ),
    ( DEFAULT, 'Trezor T', 78000, 20 ),
    ( DEFAULT, 'Ledger Nano X', 56000, 20 );


-- Una variante del comando INSERT
--  en esta variante NO mencionamos los campos
INSERT INTO billeteras
    VALUES
        ( DEFAULT, 'Cool Wallet Pro', 56000, 15 );