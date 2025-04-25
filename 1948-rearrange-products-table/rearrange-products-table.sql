/* Write your T-SQL query statement below */
SELECT product_id , store, price 
FROM
(SELECT product_id, store1 , store2 , store3
 FROM Products) AS SourceTable
UNPIVOT
(Price FOR store IN (store1 , store2 , store3)) AS Alias;