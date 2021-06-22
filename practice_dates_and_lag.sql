-- Practice with lag looking at tsa_item_demand
USE tsa_item_demand;

SHOW COLUMNS 
FROM sales;

SELECT *
FROM sales
LIMIT 5;
/*
Take a look at total daily sales for each item_id as well as the difference
in sales from the previous day using lag.
*/
SELECT
	sale_date,
	item_id,
	SUM(sale_amount) AS daily_sale_amount,
	LAG(SUM(sale_amount), 1, 0) OVER(PARTITION BY item_id
										ORDER BY sale_date) AS prev_day_amount,
	(SUM(sale_amount) - LAG(SUM(sale_amount), 1, 0) OVER(PARTITION BY item_id
										ORDER BY sale_date)) AS sale_diff_from_prev_day
FROM sales
GROUP BY sale_date, item_id
ORDER BY sale_date, item_id;

SELECT 
	sale_id,
	sale_date,
	item_id,
	sale_amount,
	LAG(sale_amount, 1) OVER(PARTITION BY sale_date
								  ORDER BY sale_date
								) AS prev_day_sales
FROM sales;

/*
Take a look at the total number of curriculum hits each day and the difference
in hits from one day to the next using lag.
*/
USE curriculum_logs;
SELECT *
FROM LOGS
LIMIT 5;

SELECT 
	DATE,
	COUNT(path) AS pages_hit_per_day,
	LAG(COUNT(path), 1) OVER(ORDER BY date) AS prev_day_pages,
	(COUNT(path) - LAG(COUNT(path), 1) OVER(ORDER BY date)) AS page_diff
FROM logs
GROUP BY DATE;

