CREATE DATABASE tienda;
USE tienda;

CREATE TABLE cliente(
    id INT AUTO_INCREMENT,
    nombre VARCHAR(50),
    rut VARCHAR(50),

    UNIQUE (rut),
    PRIMARY KEY (id)
    
);

CREATE TABLE tipoProducto(
    id INT AUTO_INCREMENT,
    nombre VARCHAR(50),
    
    UNIQUE (nombre),
    PRIMARY KEY (id)

);

CREATE TABLE producto(
    id INT AUTO_INCREMENT,
    nombre VARCHAR(50),
    tipoProducto_id_fk INT,
    precio INT,

    PRIMARY KEY (id),
    FOREIGN KEY (tipoProducto_id_fk) REFERENCES tipoProducto (id)
);

CREATE TABLE factura(
    id INT AUTO_INCREMENT,
    cliente_id_fk INT,
    fecha DATETIME,
    pagado BIT DEFAULT 0,

    PRIMARY KEY (id),
    FOREIGN KEY (cliente_id_fk) REFERENCES cliente(id)
);

CREATE TABLE compra(
    id INT AUTO_INCREMENT,
    factura_id_fk INT,
    producto_id_fk INT,
    cantidad INT,
    precio INT,

    PRIMARY KEY (id),
    FOREIGN KEY (factura_id_fk) REFERENCES factura(id),
    FOREIGN KEY (producto_id_fk) REFERENCES producto(id)

);

-- insert para cliente 
INSERT INTO cliente VALUES (NULL,"victor nuñez","1566644-4"),
                           (NULL,"reynaldo cuadra","6584111-6"),
                           (NULL,"carlos felipe","24234455-8");

-- insert para tipoProducto 
INSERT INTO tipoProducto VALUES (NULL,"hogar"),
                           (NULL,"alimento"),
                           (NULL,"cosmeticos"),
                           (NULL,"Deporte");

-- insert para productos
INSERT INTO producto VALUES (NULL,"cama dos plazas",1,6000),
                       (NULL,"salmon",2,3500),
                       (NULL,"crema facial",3,2000),
                       (NULL,"trotadora",4,10000),
                       (NULL,"meza de vidrio",1,3500),
                       (NULL,"pollo",2,1500),
                       (NULL,"pinta labios",3,2500),
                       (NULL,"mancuernas 20kg",4,4000);
-- insert para la factura
INSERT INTO factura (id,cliente_id_fk,fecha) VALUES (NULL,1,"2006-10-11 16:40:00"),
                      (NULL,2,"2009-12-1 14:10:00"),
                      (NULL,3,"2010-8-9 11:22:00");

--insert para compra
INSERT INTO compra VALUES (NULL,1,2,2,(SELECT precio FROM producto WHERE id = 2) * 2),
                          (NULL,1,6,1,(SELECT precio FROM producto WHERE id = 6) * 1),
                          (NULL,2,4,3,(SELECT precio FROM producto WHERE id = 4) * 3),
                          (NULL,2,8,2,(SELECT precio FROM producto WHERE id = 8) * 2),
                          (NULL,3,5,1,(SELECT precio FROM producto WHERE id = 5) * 1),
                          (NULL,3,1,4,(SELECT precio FROM producto WHERE id = 1) * 4);
                          

                