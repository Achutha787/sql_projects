with cte1 as 
(SELECT s.*,m.product_name,m.price,
rank()over(partition by customer_id order by order_date) as rn1
FROM dannys_diner.sales s 
join menu m on s.product_id=m.product_id)
select customer_id,product_name as first_Item_purchased from cte1
where rn1=1
group by customer_id,product_name