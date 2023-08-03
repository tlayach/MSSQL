SELECT SKU, NET_SALE_EUR, QTY,
  PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY NET_SALE_EUR / CASE WHEN QTY = 0 THEN 1 ELSE QTY END ) OVER (PARTITION BY SKU) AS UNIT_NET_MEAN
FROM EDW.db_edw.VSALES
GROUP BY SKU, NET_SALE_EUR, QTY