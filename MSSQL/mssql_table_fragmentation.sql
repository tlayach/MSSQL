SELECT TDBPS.INDEX_ID, 
  TIDX.NAME,
  TDBPS.AVG_FRAGMENTATION_IN_PERCENT  
FROM SYS.DM_DB_INDEX_PHYSICAL_STATS (DB_ID(N'EDW'), OBJECT_ID(N'db_edw.SALES'), NULL, NULL, NULL) AS TDBPS
JOIN SYS.INDEXES AS TIDX 
  ON TDBPS.OBJECT_ID = TIDX.OBJECT_ID
  AND TDBPS.INDEX_ID = TIDX.INDEX_ID
  