BULK INSERT RETEK.db_rtk.DOC_MERCH_MARGIN_TEST
FROM 'E:\Invoices.csv'
WITH (DATAFILETYPE='char', FIELDTERMINATOR='§', ROWTERMINATOR='\n', FIRSTROW=2, KEEPNULLS)