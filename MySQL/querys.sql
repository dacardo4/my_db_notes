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
TRUNCATE TABLE table_name; -- without WHERE and auot_increments init in 1
