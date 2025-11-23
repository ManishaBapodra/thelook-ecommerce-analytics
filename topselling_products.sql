select name as product_name, count(*) as units_sold
from bigquery-public-data.thelook_ecommerce.products as p 
join bigquery-public-data.thelook_ecommerce.order_items as oi
on oi.product_id = p.id 
where oi.status = 'Complete'and oi.returned_at IS NULL
group by product_name
order by units_sold DESC
limit 20