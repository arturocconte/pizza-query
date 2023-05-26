-- Databricks notebook source
SELECT  count(*),        -- linhas ñ nulas
        count(1),        -- linhas ñ nulas
        count(idPedido) -- linhas ñ nulas da idPedido
FROM silver.pizza_query.pedido

-- COMMAND ----------

SELECT *
FROM silver.pizza_query.pedido
WHERE flKetchup IS NOT null

-- COMMAND ----------

SELECT  descUF,
        count(*)

FROM silver.pizza_query.pedido

GROUP BY descUF

-- COMMAND ----------

SELECT  descUF,
        count(*) AS qtdePedidos

FROM silver.pizza_query.pedido

WHERE descUF != 'São Paulo'

GROUP BY descUF
ORDER BY qtdePedidos DESC


LIMIT 6

-- COMMAND ----------

SELECT *
FROM silver.pizza_query.produto
--WHERE descItem LIKE 'suco%' -- LIKE e % tem mto custo computacional! tomar cuidado com big data
WHERE descItem LIKE '%abacaxi%'

-- COMMAND ----------

SELECT  descUF,
        count(*) AS qtdePedidos

FROM silver.pizza_query.pedido

WHERE descUF != 'São Paulo'

GROUP BY descUF
HAVING qtdePedidos >= 75
ORDER BY qtdePedidos DESC


LIMIT 5

-- COMMAND ----------

SELECT  descUF,
        flKetchup,
        count(*)

FROM silver.pizza_query.pedido

GROUP BY descUF, flKetchup
ORDER BY descUF, flKetchup


