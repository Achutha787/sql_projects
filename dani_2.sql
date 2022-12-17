select customer_id,count(distinct(order_date)) as total_visits from sales
group by customer_id;