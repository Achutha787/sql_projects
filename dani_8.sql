with cte1 as
(SELECT s.*,m.product_name,m.price,
case
 when(customer_id="A" and order_date>='2021-01-07') then "YES"
 when(customer_id="B" and order_date>='2021-01-09') then "YES"
 else "NO"
 end as mem
FROM sales s
 join menu m on s.product_id=m.product_id)
 select customer_id,sum(price) as total_spent
 from cte1 where mem="NO" and customer_id in ("A","B") 
 group by customer_id