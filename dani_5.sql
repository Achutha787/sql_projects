with cte2 as
(with cte1 as
(SELECT product_id,product_name,customer_id,count(product_id) as most_popular_item
FROM joined_table
group by product_id,customer_id
order by customer_id)
select *,dense_rank()over(partition by customer_id order by most_popular_item desc) as drnk
from cte1) 
select product_id,product_name,customer_id,most_popular_item from cte2 where drnk=1;