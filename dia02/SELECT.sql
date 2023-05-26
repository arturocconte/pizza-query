-- Databricks notebook source
SELECT *
FROM silver.pizza_query.item_pedido --ctrl+espaço aparece as opções

-- COMMAND ----------

SELECT  descItem,
        vlPreco        
FROM silver.pizza_query.produto
