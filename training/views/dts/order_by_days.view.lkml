view: order_by_days {
  derived_table: {
    persist_for: "24 hours"
    sql:
    SELECT
      (DATE(orders.created_at )) AS orders_created_date,
      orders.status  AS orders_status,
      COUNT(*) AS orders_count
    FROM `mds-test-78976363.look_ecommerce.orders`
         AS orders
    GROUP BY
        1,
        2
    ORDER BY
        1 DESC
    LIMIT 500 ;;
  }
}
