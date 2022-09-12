include: "/training/views/dts/order_by_month.view.lkml"

view: order_inter {
  sql_table_name:
    {% if order_inter.date._in_query %}
     ${order_by_days.SQL_TABLE_NAME}
    {% else %}
     ${order_by_month.SQL_TABLE_NAME}
    {% endif %}
;;

  dimension: month {
    sql: ${TABLE}.orders_created_month ;;
  }

  dimension: date {
    sql: ${TABLE}.orders_created_date ;;
  }

  dimension: status {
    sql: ${TABLE}.orders_status ;;
  }

  measure: count {
    type: sum
    sql: ${TABLE}.orders_count ;;
  }
}
