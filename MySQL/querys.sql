SHOW DATABASES;
CREATE DATABASE db_name;
DROP DATABASE db_name;
USE db_name;
-- IMG 004 (create)
SHOW TABLES;
SELECT DATABASE(); -- Return actual db
DROP TABLE table_name; -- delete table
SHOW COLUMNS FROM table_name; -- table description
DESC table_name; -- the same
CREATE TABLE new_table_name LIKE old_table_name; -- Copy table
-- IMG 005 (insert 1 register)
SELECT * FROM table_name;
-- IMG 006 (insert n registers)
DROP TABLE IF EXISTS db_name;
CREATE DATABASE IF NOT EXISTS db_name;
-- > 
col_name VARCHAR(10) ... -- to the end of the column name.
    NOT NULL; 
    UNIQUE;
    DEFAULT data_default;
    INT UNSIGNED;
    ENUM('M','F');
    PRIMARY KEY;
    AUTO_INCREMENT;
-- DATE -> fecha
-- DATETIME -> fecha y Hora (HMS)
-- current_timestamp = NOW()
-- IMG 009 Foreing Key
ALTER TABLE table_name ADD col_name INT UNSIGNED NOT NULL;
ALTER TABLE table_name DROP COLUMN col_name;
SELECT * FROM table_name;
SELECT * FROM table_name\G; -- better format to read
SELECT * FROM table_name WHERE col_name ?? 'some_value'; -- ?? => <,>,<=,>=,=,!=,<>
SELECT * FROM table_name WHERE col_name1 = 'value1' AND col_name2 = 'value2'; -- AND,OR,NOT
SELECT * FROM table_name WHERE col_name IS NULL;
SELECT * FROM table_name WHERE col_name <=> NULL; -- => IS NOT NULL
SELECT * FROM table_name WHERE col_name BETWEEN 'value1' AND 'value2';
SELECT * FROM table_name WHERE col_name IN ('value1', 'value2'); -- All values you want
SELECT DISTINCT col_name FROM table_name; -- All values without repeat
SELECT col_name AS myAlias FROM table_name; -- => SELECT col_name myAlias FROM table_name;
UPDATE table_name SET col_name1 = 'new_value1', col_name1 = 'new_value1';
UPDATE table_name SET col_name = 'new_value' WHERE col_name = 'value';
DELETE FROM table_name; -- delete all
DELETE FROM table_name WHERE col_name = 'value';
-- IMG 010 delete cascade
TRUNCATE TABLE table_name; -- without WHERE and auto_increments init in 1
SELECT CONCAT(col_name1,' ',col_name2) AS new_name FROM table_name;
SELECT * FROM table_name WHERE LENGTH(some_value) > 'some_value';
SELECT UPPER(col_name), LOWER(col_name) FROM table_name;
SELECT TRIM('          cadena con espacios al principio y al final               ');
SELECT LEFT('some_value',5) AS sub_izq, RIGHT('some_value',10) AS sub_der;
SELECT RAND(); -- random
SELECT ROUND(RAND()*100); -- random
SELECT TRUNCATE(1.141516,3);
SELECT POW(2, 16); -- => POWER -> 2^16
SELECT NOW();
SET @now = NOW();
SELECT SECOND(@now); -- MINUTE,HOUR,MONTH,YEAR
SELECT DAYOFWEEK(@now); -- DAYOFMONTH,DAYOFYEAR
SELECT DATE('corect_valueDMY');
SELECT CURDATE(); -- today date
SELECT @now + INTERVAL 30 DAY; -- SECOND,MINUTE,HOUR,DAY,WEEK,MONTH,YEAR
SELECT IF ( 'boolean_value with col_name','if boolean_values TRUE', 'if boolean_values FALSE') FROM table_name;
SELECT IFNULL(col_name,'value if col_name is null') FROM table_name;
-- IMG 011 Functions and DELIMITER
DROP FUNCTION function_name;
SELECT * FROM table_name WHERE col_name LIKE 'some_value%'; -- 'some_value%','%some_value','%some_value%'
SELECT * FROM table_name WHERE col_name LIKE '__b__'; -- lenght 5 and b in thirt place
SELECT * FROM table_name WHERE col_name REGEXP '^[HL]'; -- col_name begin with H or L
SELECT * FROM table_name ORDER BY col_name DESC; -- ASC,DECS
SELECT * FROM table_name ORDER BY col_name1 AND col_name2 DESC; 
SELECT * FROM table_name LIMIT 'limit_value'; 
SELECT * FROM table_name LIMIT 'num_value_begin','limit_value'; 
SELECT COUNT(*) FROM table_name;
SELECT COUNT(*) FROM table_name WHERE col_name IS NOT NULL;
SELECT COUNT(col_name) FROM table_name; -- the same that the sentence before this
SELECT SUM(col_name) FROM table_name; -- SUM all values
SELECT MAX(col_name) FROM table_name; -- MAX value of all values
SELECT MIN(col_name) FROM table_name; -- MIN value of all values
SELECT AVG(col_name) FROM table_name; -- AVG value of all values
SELECT autor_id, SUM(ventas) FROM libros GROUP BY autor_id;
SELECT autor_id, SUM(ventas) FROM libros GROUP BY autor_id HAVING SUM(ventas) > 100;
SELECT col_name FROM table_name UNION SELECT col_name1 FROM table_name1;
-- IMG 012 subconsulting
EXISTS(SELECT ...); -- true if have at least 1 register
-- IMG 013 INNER JOIN
-- IMG 014 INNER JOIN USING
-- IMG 015 LEFT JOIN
-- IMG 016 RIGHT JOIN
-- IMG 017 MULTIPLE JOIN
-- IMG 018 CROSS JOIN
-- IMG 019 Create View
-- IMG 020 Update Views
-- IMG 021 List Procedures
-- IMG 022 Create Procedure
CALL procedure_name('params');
DROP PROCEDURE procedure_name('params');
-- IMG 023 Create Procedure With 'Return' output
-- IMG 024 Create Procedure With IF conditions
-- IMG 025 Create Procedure With case conditions
-- IMG 025 Create Procedure With cilces -> while, repeat
