# Expand Database Feature
SELECT
	Date,
	Month(date) AS 'MONTH',
	YEAR(date) AS 'YEAR',
	DAYNAME(date) AS 'DAY',
	Time,
	HOUR(Time) as 'Hour',
	Transaction,
	Item,
	CASE
		WHEN Time BETWEEN '05:00:00' AND '12:00:00' THEN 'Morning'
		WHEN Time BETWEEN '12:00:00' AND '18:00:00' THEN 'Afternoon'
		WHEN Time BETWEEN '18:00:00' AND '24:00:00' THEN 'Evening'
                WHEN Time BETWEEN '00:00:00' AND '05:00:00' THEN 'Evening'
	END as 'Time of Day'
FROM transactions

# Market Basket Query
SELECT transaction,GROUP_CONCAT(" ",Item) AS 'Basket'
FROM transactions
GROUP BY Transaction
