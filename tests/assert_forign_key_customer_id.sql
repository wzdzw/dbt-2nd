with

customers as (
    select * from {{ ref('stg_customers') }}
),

orders as (
    select * from {{ ref('stg_orders') }}
)

select 
    order_id,
    customer_id
from orders o
where not exists (select 1 from customers c where c.customer_id = o.customer_id)

