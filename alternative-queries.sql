/* Draw the Triangle 1 */
SET @TEMP:=21; 
SELECT REPEAT('* ', @TEMP:= @TEMP - 1) 
FROM INFORMATION_SCHEMA.TABLES;

/* Draw the Triangle 2 */
SET @TEMP:=0;
SELECT REPEAT('* ', @TEMP:= @TEMP + 1)
FROM INFORMATION_SCHEMA.TABLES
WHERE @TEMP < 21;
/* SELECT prints things, WHERE filters things. Its that simple. */