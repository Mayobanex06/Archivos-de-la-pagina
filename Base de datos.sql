CREATE TABLE usarios (
id_usuarios INT AUTO_INCREMENT PRIMARY KEY,
nombre_completo VARCHAR(100) NOT NULL,
nombre_usuario VARCHAR(50) NOT NULL UNIQUE, 
password VARCHAR(255) NOT NULL, 
rol ENUM ('Admin') NOT NULL,
estado TINYINT (1) DEFAULT 1,
ultimo_login DATETIME
);
CREATE TABLE Invetario_celulares (
id_celulares INT AUTO_INCREMENT PRIMARY KEY,
marca VARCHAR(50) NOT NULL,
modelo VARCHAR (20),
imei VARCHAR (20) NOT NULL UNIQUE,
color VARCHAR(30), 
precio_venta DECIMAL (10, 2) NOT NULL,
estado_stock ENUM ('Disponible', 'Vendido', 'Garantia') DEFAULT 'Disponible'
);
CREATE TABLE ventas(
id_ventas INT AUTO_INCREMENT PRIMARY KEY,
id_celulares INT NOT NULL,
id_usarios INT NOT NULL,
nombre_cliente VARCHAR(100),
precio_final DECIMAL(10, 2),
fecha_venta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

FOREIGN KEY (id_usarios) references usuarios (id_usuarios),
FOREIGN KEY (id_celulares) references inventario_celulares(id_celulares)
);