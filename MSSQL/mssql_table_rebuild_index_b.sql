ALTER INDEX ALL 
ON EDW.db_edw.SALES
REBUILD WITH (PAD_INDEX=ON, FILLFACTOR=90, SORT_IN_TEMPDB=OFF, STATISTICS_NORECOMPUTE=OFF)