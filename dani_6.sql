with cte1 as 
(SELECT *,row_number()over(partition by customer_id) as rn FROM dannys_diner.fullinfotable
where mem="YES")
select customer_id,product_name as first_item_purchased_aftermember from cte1 where rn=1;