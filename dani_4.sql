SELECT product_name,count(product_id) as max_purchased_item FROM joined_table
group by product_id
order by max_purchased_item desc 
limit 1;