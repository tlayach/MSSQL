SELECT DATEADD(DAY, (9 - DATEPART(WEEKDAY, DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()), 0))) % 7, DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()), 0))
-- 2017-06-05 00:00:00.000