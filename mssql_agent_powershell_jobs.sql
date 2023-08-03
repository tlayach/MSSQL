EXEC sp_configure;
SELECT max_workers_count FROM sys.dm_os_sys_info;
SELECT COUNT(*) FROM sys.dm_os_workers;
SELECT subsystem, max_worker_threads FROM msdb.dbo.syssubsystems;
UPDATE msdb.dbo.syssubsystems SET max_worker_threads = 40 WHERE subsystem = 'PowerShell';
