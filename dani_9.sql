SELECT customer_id,
sum(case when product_name="sushi" then (2*10*price)  
     else (1*10*price) end)as points
FROM sales s join menu m on s.product_id=m.product_id
group by customer_id