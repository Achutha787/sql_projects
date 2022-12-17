
 with cte2 as 
 (with cte1 as (SELECT * FROM dannys_diner.fullinfo_tble where rnk=0 and customer_id in("A","B"))
 select customer_id,product_name,order_date,dense_rank() over (partition by customer_id order by order_date desc) as drnk 
 from cte1)
 select customer_id,product_name as last_purchased_beforemember from cte2 where drnk=1;