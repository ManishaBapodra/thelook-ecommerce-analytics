SELECT *
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = 'Complete' AND (delivered_at < shipped_at
   OR shipped_at < created_at);