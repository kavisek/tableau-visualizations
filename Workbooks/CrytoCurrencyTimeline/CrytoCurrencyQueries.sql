SELECT *,
Month(Date) AS 'MONTH',
YEAR(Date) AS 'YEAR',
DAYNAME
(Date) AS 'Weekday'
FROM historical_prices
