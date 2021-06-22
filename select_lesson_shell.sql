-- A. Basic SELECT Statement

-- 1. Use the database fruits_db.




-- 2. Inspect the columns and data types from a table.




-- 3. Another way to Inspect the columns and data types from a table.




-- 4. Return all of the rows and columns from a table.




-- 5. Select specific column(s) and all of the rows from those column(s).




-- B. SELECT DISTINCT Statement

-- 1. Use chiplotle database to demo a db with duplicates.




-- 2. Inspect the columns and data types from the orders table.




-- 3. Return all of the rows and columns from a table. (4622 records returned)




/*
4. Select specific column(s) and all of the rows from those column(s). 
(4622 records returned)
*/




/*
5. Return only the unique values from a column using the DISTINCT keyword 
(50 records returned)
*/



-- C. Filter Return Sets Using WHERE

/*
1. Filter so that only records with the value 'Chicken Bowl' in item_name are returned.
(726 records returned)
*/



-- 2. Filter by item_price. Why doesn't the QUERY below run? 




/*
3. Filter using the primary key column; only one record will be returned because the value must be unique.
*/



-- 4. Filter using a WHERE clause with the BETWEEN & AND operators. (Returns 39 records)




-- 5. Filter using a WHERE statement >, <, <> operators.



-- Create Alias Using AS

-- 1. Create an alias for a column using the AS keyword. (Returns 267 records)



/*
Notice that if I have spaces in my column alias, I have to put it in single quotes.
If I do not have a space in my colum alias, I do not have to put it in quotes.
*/