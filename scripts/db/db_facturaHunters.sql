USE db_hunter_facture_dayismar;
CREATE TABLE tb_client(
    identificacion INT(25) NOT NULL PRIMARY KEY COMMENT 'número de identificacion unico cliente',
    full_name VARCHAR (50) NOT NULL  COMMENT 'nombre completo de cliente ',
    email VARCHAR(50) NOT NULL COMMENT 'email del cliente',
    address VARCHAR (70) NOT NULL COMMENT 'direccion del cliente',
    phone VARCHAR (11) NOT NULL COMMENT 'telefono del cliente'
);
CREATE TABLE tb_product(
    id_product INT(25) NOT NULL PRIMARY KEY COMMENT 'número del producto unico',
    name_product VARCHAR(15) NOT NULL  COMMENT 'nombre del producto',
    amount INT(3) NOT NULL COMMENT 'cantidad de productos',
    value_prodcut FLOAT(6) NOT NULL COMMENT 'valor del producto'
);
CREATE TABLE tb_seller(
    id_seller INTEGER(11) NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Numero del vendedor',
    seller VARCHAR(60) NOT NULL COMMENT 'Nombre del vendedor'
);
DROP TABLE tb_seller;
alter TABLE tb_bill MODIFY fk_identificacion INT(25) NOT NULL COMMENT 'relacion de la tabla tb_client';
ALTER TABLE tb_bill ADD fk_id_seller INTEGER(11) NOT NULL COMMENT 'relacion de la tabla tb_seller';
ALTER TABLE tb_bill ADD fk_id_product INT(25) NOT NULL COMMENT 'relacion de la tabla tb_product';

ALTER TABLE tb_bill ADD CONSTRAINT tb_bill_tb_client_fk FOREIGN KEY(fk_identificacion) REFERENCES tb_client(identificacion);
ALTER TABLE tb_bill ADD CONSTRAINT tb_bill_tb_product_fk FOREIGN KEY(fk_id_product) REFERENCES tb_product(id_product);
ALTER TABLE tb_bill ADD CONSTRAINT tb_bill_tb_seller_fk FOREIGN KEY(fk_id_seller) REFERENCES tb_seller(id_seller);