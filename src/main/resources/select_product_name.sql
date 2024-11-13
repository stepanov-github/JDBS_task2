SELECT product_name
FROM home.ORDERS
         JOIN home.customers c on c.id = ORDERS.customer_id
WHERE lower(c.name) = lower(:name);
