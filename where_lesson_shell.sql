############### Basic WHERE Clause ##############

-- Use the albums database.
USE albums_db;

SHOW COLUMNS
FROM albums;


-- Return all of the rows and columns from the albums table. (returns 31 records)



-- Return all of the unique values in the artist column. (returns 23 records)




-- Return all of the albums that were released in 1990. (returns 1 record)




############ WHERE with LIKE Keyword and % Wildcard ###########

-- Return all of the albums that contain the pattern 'at' somewhere in the titles. (returns 5 records)




-- Return all of the albums with the word 'the' somewhere in them. (returns  9 records)




-- Return all of the albums that end in the letter 'a'. (returns 2 records)




-- Return all of the albums that start with the letter 'a'. (returns 2  records)




#################### WHERE with BETWEEN and IN Operators ###############

-- Return all of the albums that were released in the 1990s. (returns 11 records)




-- Return the artist name, album title, and sales for all of the albums that sold between 10 and 20 million copies (returns 13 records)




############# Switch to the chipotle database for the rest of the demo.
USE chipotle;

-- Check out the data types of my orders table.
SELECT * FROM orders;

SHOW COLUMNS
FROM orders;


-- Return all of the rows and columns from the orders table. (returns 4622 records)




-- Return all of the unique values in the item_name column. (returns 50 records)




-- Return all of the records that have chicken in the name. (returns 1560  records)




-- Return only the non-repeating values for item_name that have chicken in the name. (returns 6 records)



/*
Return only the records that have either 'Veggie Soft Tacos', 'Crispy Tacos', or 'Steak Bowl' as a value in item_name. 
(returns 220 records)
*/




-- Return only the records with order number 1, 7, or 10. (returns 8 records)



######################## WHERE with IS NULL and IS NOT NULL ###################

-- Use my own db; yours will be your username database.
USE join_example_db;

-- Return all of the columns and rows from the users table. (returns 6 records)





-- Return only records that don't have NULL values in role_id; (returns 4 records)





-- Return only records that don't have NULL values in role_id; (returns 2 records)





######################### WHERE with AND & OR Operators ########################

-- Use chipotle database.
USE chipotle;

/*
Return only the records that have either 'Veggie Soft Tacos', 'Crispy Tacos', or 'Steak Bowl' as a value in item_name chaining OR operators. 
(returns 220 records)
*/







-- Return only the records with order number 1, 7, or 10 chaining OR operators. (returns 8 records)






-- Return only the records that have Chicken in the name OR are a part of order 10. (returns 1561 records)






-- Return only the records that have Chicken in the name AND are a part of order 10. (returns 1 record)






/*
Return only the records that have the name 'Veggie Soft Tacos' AND have order_id 304 or 322
OR any items that have the name 'Crispy Tacos'.
(returns 4 records)
*/





/*
Return only the records that have either the order_id 304 or 322
OR have the name 'Crispy Tacos' 
-->(conditions grouped with parentheses are evaluated first)
AND have the name 'Veggie Soft Tacos'.
(returns 2 records)
*/






/*
The records returned have red in the description AND tacos in the name as well as any records that have soft in the name.
(returns 618 records)
*/






-- The records returned have either soft OR tacos in their name AND have red in the description.
-- (returns 84 records)





##################### ORDER BY Clause #############################

/*
SELECT column_name
FROM table
ORDER BY column_name [ASC|DESC];
*/
-- Use chipotle database;
USE chipotle;


-- Return all of the items in the orders table and return the records in alphabetical order.




-- Return all of the items in the orders table and return the records in reverse alphabetical order.




-- Alias the item_name column and return in reverse alphabetical order.




########################### Chaining ORDER BY Clauses #####################

-- Alias the items and quantity columns and return in ascending order by the number and then the item.





/*
Alias the items and quantity columns and return in descending order by the number 
and then the item in alphabetical order.
*/




############################ LIMIT and OFFSET #############################

/*
We can limit the number of rows returned to us, and we can add OFFSET to begin our return set somewhere other than the first row.
*/





