-- -----------------------------------------------------
-- Table `introdb`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `productos` (
                                                          `idProducto` INT NOT NULL AUTO_INCREMENT,
                                                          `prdNombre` VARCHAR(45) NOT NULL,
                                                          `prdPrecio` FLOAT(9,2) NOT NULL,
                                                          `idMarca` TINYINT NOT NULL,
                                                          `idCategoria` TINYINT NOT NULL,
                                                          `prdDescripcion` VARCHAR(100) NOT NULL,
                                                          `prdImagen` VARCHAR(45) NOT NULL,
                                                          `prdActivo` TINYINT(1) NOT NULL,
                                                          PRIMARY KEY (`idProducto`),
                                                          INDEX `fk_marca_idx` (`idMarca` ASC) VISIBLE,
                                                          INDEX `fk_categoria_idx` (`idCategoria` ASC) VISIBLE,
                                                          CONSTRAINT `fk_marca`
                                                              FOREIGN KEY (`idMarca`)
                                                                  REFERENCES `introdb61479`.`marcas` (`idMarca`)
                                                                  ON DELETE NO ACTION
                                                                  ON UPDATE NO ACTION,
                                                          CONSTRAINT `fk_categoria`
                                                              FOREIGN KEY (`idCategoria`)
                                                                  REFERENCES `introdb61479`.`categorias` (`idCategoria`)
                                                                  ON DELETE NO ACTION
                                                                  ON UPDATE NO ACTION)
    ENGINE = InnoDB;

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos`
(`idProducto`, `prdNombre`, `prdPrecio`, `idMarca`, `idCategoria`, `prdDescripcion`, `prdImagen`, `prdActivo`)
VALUES
    (1, 'Nikon Z6', 1650.00, 1, 2, 'Cuerpo de cámara sin espejo formato full frame. Resolución 24.5 MPX. Bluetooth, Wi-Fi, GPS. ISO 100-51200', 'nikon-z6.jpg', 1),
    (2, 'iPhone 12 Pro (256GB) gold', 1200.00, 2, 1, 'Apple iPhone 12 Pro de 256GB color dorado, libre de carrier.', 'iphone-12-pro-gold.png', 1),
    (3, 'Marshall Acton II', 300.00, 4, 4, 'Altavoz inalámbrico Marshall Acton II. Wi-Fi y Bluetooth multihabitación color negro.', 'marshall-acton.jpg', 1),
    (4, 'Homepod Mini', 99.00, 2, 4, 'Altavoz inteligente inalámbrico. Compatible con Siri. Wifi, Bluetooth. Compatible con multihabitación.', 'homepod-mini.jpg', 1),
    (5, 'Samsung Class QLED Q80T Series', 1200.00, 5, 5, 'Smart TV Samsung Class QLED Q80T Series, 65\", 4K, UHD', 'Q80T.jpg', 1),
    (6, 'P40 Pro Plus 512GB', 1250.00, 6, 1, 'Smartphone Huawei P40 Pro Plus 5G 512GB', 'P40-pro-plus.jpg', 1);

