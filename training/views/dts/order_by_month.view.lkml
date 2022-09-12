view: order_by_month {
  derived_table: {
    persist_for: "24 hours"
    sql:
    SELECT
        (FORMAT_TIMESTAMP('%Y-%m', orders.created_at )) AS orders_created_month,
        orders.status  AS orders_status,
        COUNT(*) AS orders_count
    FROM `mds-test-78976363.look_ecommerce.orders`
         AS orders
    GROUP BY
        1,
        2
    ORDER BY
        1 DESC
    LIMIT 500
    ;;
  }
}
