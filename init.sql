-- eliminamos bbdd en caso de existir
DROP DATABASE IF EXISTS pizzahot;
-- creamos la bbdd
CREATE DATABASE pizzahot;
-- usamos la bbdd pizzahot
USE pizzahot;
-- creamos las tabla pizza en caso de no existir
DROP TABLE IF EXISTS pizzas;
CREATE TABLE pizzas(
    id int not null AUTO_INCREMENT,
    pizza VARCHAR(30) unique NOT NULL,
    precio float(4,2) not null,
    imagen VARCHAR(30) default 'default.jpg',
    PRIMARY KEY(id)
);
-- creamos las tabla ingredientes en caso de no existir
DROP TABLE IF EXISTS ingredientes;
CREATE TABLE ingredientes(
    id int not null AUTO_INCREMENT,
    ingrediente VARCHAR(30) unique NOT NULL,
    tipo enum('vegetal','carnes','pescado','lácteos','condimentos'),
    activo tinyint(1) default 1,
    PRIMARY KEY(id)
);
-- creamos las tabla pizzasIngredientes en caso de no existir
DROP TABLE IF EXISTS pizzasIngredientes;
CREATE TABLE pizzasIngredientes(
    id int AUTO_INCREMENT,
    id_pizza INT NOT NULL,
    id_ingrediente INT NOT NULL,
    PRIMARY KEY(id)
);

-- creamos las tabla clientes en caso de no existir
DROP TABLE IF EXISTS clientes;
CREATE TABLE clientes(
    id int AUTO_INCREMENT,
    nickname VARCHAR(30) unique NOT NULL,
    email VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);


-- creamos las tabla pedidos en caso de no existir
DROP TABLE IF EXISTS pedidos;
CREATE TABLE pedidos(
    id int AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    fecha_pedido TIMESTAMP,
    -- precio_pedido float(4,2) not null,
    PRIMARY KEY(id)
);

-- creamos las tabla detalle en caso de no existir
DROP TABLE IF EXISTS detallespedido;
CREATE TABLE detallespedido(
    id int AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_pizza INT NOT NULL,
    cantidad INT(2) unsigned NOT NULL,
    PRIMARY KEY(id)
);


