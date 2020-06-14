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
