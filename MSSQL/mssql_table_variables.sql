DECLARE @MyTableVar TABLE (ID VARCHAR(3));  -- table variables
DECLARE @counter INT;

BEGIN TRANSACTION
SET @counter = 8;
WHILE @counter < 13
BEGIN
  -- insert values between 8 and 12 (P8, ..., P12)
  INSERT INTO @MyTableVar VALUES('P' + CAST(@counter AS VARCHAR));
  SET @counter = @counter + 1;
END
COMMIT TRANSACTION

SELECT ID FROM @MyTableVar;
-- P8, ..., P12
