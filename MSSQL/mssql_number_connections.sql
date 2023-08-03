SELECT SYSPROCESSES.LOGINAME,
  DB_NAME(SYSPROCESSES.DBID) AS DBNAME,
  COUNT(SYSPROCESSES.DBID) AS NO_CONN
FROM SYS.SYSPROCESSES
WHERE SYSPROCESSES.DBID > 0
GROUP BY SYSPROCESSES.DBID,
  SYSPROCESSES.LOGINAME
  