-- insertamos datos de pizzas
INSERT INTO pizzas VALUES
(1,'Margherita', 10.34, 'Margherita.jpg'),
(2,'Marinara', 10.50, 'Marinara.jpg'),
(3,'Prosciutto e funghi', 13.34,'Prosciutto.jpg'),
(4,'Quattro Stagioni', 11.34,'Prosciutto.jpg'),
(5,'Capricciosa', 14.64,'Capricciosa.jpg'),
(6,'Quattro Formaggi', 12.54,'QuattroFor.jpg'),
(7,'Vegetariana', 15.24,'Vegetariana.jpg'),
(8,'Diavola', 10.34,'Diavola.jpg'),
(9,'Boscaiola', 14.74,'Boscaiola.jpg'),
(10,'Frutti di Mare', 10.34,'FruttidiMare.jpg'),
(11,'Hawaiana', 10.20,'Hawaiana.jpg'),
(12,'Barbacoa', 12.34,'Barbacoa.jpg'),
(13,'Carbonara', 11.64,'Carbonara.jpg'),
(14,'Nueces y cebolla', 13.44,'Nuecescebolla.jpg'),
(15,'Tonno', 12.34,'tonno.jpg');


-- insertamos los ingredientes
INSERT INTO ingredientes VALUES
(1,'salsa de tomate',1,1),
(2,'tomates cherry',1,1),
(3,'piña',1,1),
(4,'mozzarella',4,1),
(5,'gorgonzola',4,1),
(6,'queso de cabra',4,1),
(7,'gouda',4,1),
(8,'emmental',4,1),
(9,'tofu',1,1),
(10,'aceitunas negras',1,1),
(11,'aceitunas verdes',1,1),
(12,'pepperoni',2,1),
(13,'salami',2,1),
(14,'pimientos morrones',1,1),
(15,'pimientos verdes',1,1),
(16,'cebolla',1,1),
(17,'bacon',2,1),
(18,'jamon york',2,1),
(19,'procciuto',2,1),
(20,'pollo',2,1),
(21,'ternera',2,1),
(22,'atun',3,1),
(23,'salmon',3,1),
(24,'anchoas',3,1),
(25,'nueces',1,1),
(26,'oregano',5,1),
(27,'albahaca',5,1),
(28,'salvia',5,1),
(29,'ajo',1,1),
(30,'champiñones',1,1),
(31,'gambas',3,1),
(32,'mejillones',3,1),
(33,'aceite de oliva',5,1),
(34,'parmesano',4,1),
(35,'alcachofas',1,1),
(36,'fontina',4,1),
(37,'nata',4,1),
(38,'guindilla picante',5,1),
(39,'salsa barbacoa',5,1);

-- insertamos las pizzasingredientes
INSERT INTO pizzasIngredientes VALUES
-- Margherita: salsa de tomate, mozzarela,orégano
(1,1,1),
(2,1,4),
(3,1,26),
-- Marinara : salsa de tomate, ajo, orégano, albahaca
(4,2,1),
(5,2,29),
(6,2,26),
(7,2,27),
-- Prosciutto e funghi: salsa de tomate, proscitto, champiñon, mozzarella
(8,3,1),
(9,3,19),
(10,3,30),
(11,3,4),
-- Quattro Stagioni: alchachofas, salsa de tomate,albahaca,champiñones,prosciutto,aceitunas
(12,4,35),
(13,4,1),
(14,4,27),
(15,4,30),
(16,4,19),
(17,4,10),
-- Capricciosa: mozzarela,prosciutto,alcachofas,anchoas, champiñones
(18,5,4),
(19,5,19),
(20,5,35),
(21,5,24),
(22,5,30),
-- Quattro Formaggi:mozzarella. gorgonzola, fontina,parmesano
(23,6,4),
(24,6,5),
(25,6,36),
(26,6,34),
-- Vegetariana: pimiento verde, cebolla, champiñones, aceitunas,mozzarella, tomate
(27,7,15),
(28,7,16),
(29,7,30),
(30,7,10),
(31,7,4),
(32,7,2),
-- Diavola: pepperoni,salsa de tomate,guindilla,mozzarella, emental, albahaca
(33,8,12),
(34,8,1),
(35,8,38),
(36,8,4),
(37,8,8),
(38,8,27),
-- Boscaiola:champiñones,tomates cherry, pepperoni, albahaca, mozzarella
(39,9,30),
(40,9,2),
(41,9,12),
(42,9,27),
(43,9,4),
-- Frutti di Mare:mejillones,gambas,salsa de tomate
(44,10,32),
(45,10,31),
(46,10,1),
-- hawaiana: piña, jamon york, mozzarella, salsa de tomate
(47,11,3),
(48,11,18),
(49,11,4),
(50,11,1),
-- barbacoa: ternera, bacon, salsa barbacoa,mozzarella
(51,12,21),
(52,12,17),
(53,12,39),
(54,12,4),
-- carbonara: nata, bacon, champiñon, mozzarella, cebolla
(55,13,37),
(56,13,17),
(57,13,30),
(58,13,4),
(59,13,16),
-- Nueces y cebolla: nueces,cebolla, mozzarella
(60,14,25),
(61,14,16),
(62,14,4),
-- tonno: atun, tomate, cebolla,ajo
(63,15,22),
(64,15,1),
(65,15,16),
(66,15,29);

-- insertamos clientes
INSERT INTO clientes VALUES
(1,'jose','jose@gmail.com'),
(2,'Mari','mari@gmail.com'),
(3,'Pepitito','pepitito@gmail.com'),
(4,'Melchor','melchor@gmail.com');

-- insertamos pedidos
INSERT INTO pedidos VALUES
(1,1,NULL),
(2,2,NULL);

-- insertamos detallespedido
INSERT INTO detallespedido VALUES
-- pedido de jose
(1,1,1,2),
(2,1,6,1),
(3,1,10,1),
-- pedido de Mari
(4,2,8,1),
(5,2,6,1),
(6,2,6,2),
(7,3,10,2),
(8,3,9,1),
(9,3,14,1),
(10,4,15,2),
(11,4,12,1),
(12,4,5,2);
