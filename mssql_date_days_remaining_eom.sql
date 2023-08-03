-- Number of days remaining to the end-of-month

SELECT DATEDIFF(DAY, GETDATE(), EOMONTH(GETDATE())) AS DAYS_REMAIN_EOM
