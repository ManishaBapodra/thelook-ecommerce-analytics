SELECT COUNT(*)
FROM `bigquery-public-data.thelook_ecommerce.order_items` oi
LEFT JOIN `bigquery-public-data.thelook_ecommerce.users` u
  ON oi.user_id = u.id
WHERE u.id IS NULL;