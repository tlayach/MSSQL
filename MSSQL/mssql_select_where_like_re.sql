-- P[0-9][0-9]: 2 digits
DECLARE @MyTableVar TABLE (ID VARCHAR(3));  -- table variables
DECLARE @counter INT;

BEGIN TRANSACTION
SET @counter = 5;
WHILE @counter < 15
BEGIN
  -- insert values between 5 and 14 (P5, ..., P14)
  INSERT INTO @MyTableVar VALUES('P' + CAST(@counter AS VARCHAR));
  SET @counter = @counter + 1;
END
COMMIT TRANSACTION

SELECT ID FROM @MyTableVar WHERE ID LIKE 'P[0-9][0-9]';
-- P10, ..., P14
