SELECT customer_id,sum(price) as total_spent FROM sales s
join menu m on m.product_id=s.product_id
group by customer_id;