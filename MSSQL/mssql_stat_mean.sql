SELECT AVG(BASE_FN),
(
 (SELECT MAX(BASE_FN) FROM
   (SELECT TOP 50 PERCENT BASE_FN FROM CONTABILIDADE.DB_CTB.SALARIO ORDER BY BASE_FN) AS BOTTOMHALF)
 +
 (SELECT MIN(BASE_FN) FROM
   (SELECT TOP 50 PERCENT BASE_FN FROM CONTABILIDADE.DB_CTB.SALARIO ORDER BY BASE_FN DESC) AS TOPHALF)
) / 2 AS MEDIAN
FROM CONTABILIDADE.DB_CTB.SALARIO
