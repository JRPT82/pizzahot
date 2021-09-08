-- seleccionamos todo de pizzas
SELECT * FROM pizzas;
-- seleccionamos todo de ingredientes
SELECT * FROM ingredientes;
-- seleccionamos todo de pizzasingredientes
SELECT * FROM pizzasingredientes;
-- buscamos nombre y precio ordenadas por orden alfabetico
SELECT
pizza,
precio
FROM
pizzas
ORDER BY
pizza ASC;
-- buscamos nombre y precio ordenadas por precio mas barato
SELECT
pizza,
precio
FROM
pizzas
ORDER BY
precio ASC;
-- buscamos la pizza Carbonara con sus ingredientes
SELECT
pizzas.pizza,
ingredientes.ingrediente
FROM pizzas
JOIN pizzasingredientes
ON  pizzas.id = pizzasingredientes.id_pizza
JOIN ingredientes
ON pizzasingredientes.id_ingrediente = ingredientes.id
WHERE pizzas.pizza = 'Carbonara';

-- buscamos pizzas que tengan carne
SELECT DISTINCT
pizzas.pizza
FROM pizzas
JOIN pizzasingredientes
ON  pizzas.id = pizzasingredientes.id_pizza
JOIN ingredientes
ON pizzasingredientes.id_ingrediente = ingredientes.id
WHERE ingredientes.tipo = 'carnes';

-- buscamos pizzas que tengan pescado
SELECT DISTINCT
pizzas.pizza
FROM pizzas
JOIN pizzasingredientes
ON  pizzas.id = pizzasingredientes.id_pizza
JOIN ingredientes
ON pizzasingredientes.id_ingrediente = ingredientes.id
WHERE ingredientes.tipo = 'pescado';


-- cuenta el numero de pizzas que tenemos con tomate
SELECT DISTINCT
COUNT(pizzas.pizza) AS Total_pizzas_CON_Tomate
FROM pizzas
JOIN pizzasingredientes
ON  pizzas.id = pizzasingredientes.id_pizza
JOIN ingredientes
ON pizzasingredientes.id_ingrediente = ingredientes.id
WHERE ingredientes.ingrediente = 'salsa de tomate'
OR ingredientes.ingrediente = 'tomates cherry';


/*  acciones
jose hace el pedido 1
- pide 2 margaritas
- pide 1 cuatro quesos
- pide 1 frutti di mare

el camarero te tiene dar un ticket
con todos los detalles asociados al pedido
el precio total*/

SELECT
clientes.nickname,
detallespedido.cantidad,
pizzas.pizza,
pizzas.precio,
pizzas.precio*detallespedido.cantidad AS TOTAL
FROM pedidos
JOIN clientes
ON pedidos.id_cliente = clientes.id
JOIN detallespedido
ON detallespedido.id_pedido = pedidos.id
JOIN pizzas
ON detallespedido.id_pizza = pizzas.id
WHERE pedidos.id = 1;

--- pedido de Mari
SELECT 
clientes.nickname,
pedidos.id,
SUM(pizzas.precio*detallespedido.cantidad)
 from pedidos
join clientes on pedidos.id_cliente = clientes.id
join detallespedido on detallespedido.id_pedido = pedidos.id
join pizzas on detallespedido.id_pizza= pizzas.id
where pedidos.id = 2;