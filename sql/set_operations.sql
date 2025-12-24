
SELECT * FROM synthetic.sales_jan
UNION
SELECT * FROM synthetic.sales_feb; 


SELECT product_name, amount FROM synthetic.sales_jan; 
UNION -- removes duplicates
SELECT product_name,amount FROM synthetic.sales_feb; 


SELECT product_name, amount FROM synthetic.sales_jan
UNION all -- retains duplicates
SELECT product_name,amount FROM synthetic.sales_feb; 

SELECT product_name, amount FROM synthetic.sales_jan
INTERSECT -- common rows
SELECT product_name,amount FROM synthetic.sales_feb; 

SELECT product_name, amount FROM synthetic.sales_jan
EXCEPT -- rows in jan not in feb
SELECT product_name,amount FROM synthetic.sales_feb; 