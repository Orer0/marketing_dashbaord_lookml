view: channel {
  sql_table_name: `sandbox-aroblin.marketing.channel`
    ;;

  dimension: channel_name {
    type: string
    sql: ${TABLE}.channel_name ;;
  }

  dimension: daily_unique {
    type: number
    sql: ${TABLE}.daily_unique ;;
  }

  dimension_group: datestat {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.datestat ;;
  }

  dimension: frq_users {
    type: number
    sql: ${TABLE}.frq_users ;;
  }

  dimension: loyal_users {
    type: number
    sql: ${TABLE}.loyal_users ;;
  }

  dimension: monthly_unique {
    type: number
    sql: ${TABLE}.monthly_unique ;;
  }

  dimension: new_suscribers_per_day {
    type: number
    sql: ${TABLE}.new_suscribers_per_day ;;
  }

  dimension: new_users {
    type: number
    sql: ${TABLE}.new_users ;;
  }

  dimension: return_users {
    type: number
    sql: ${TABLE}.return_users ;;
  }

  dimension: screenshots {
    type: number
    sql: ${TABLE}.screenshots ;;
  }

  dimension: shares {
    type: number
    sql: ${TABLE}.shares ;;
  }

  dimension: suscribers {
    type: number
    sql: ${TABLE}.suscribers ;;
  }

  dimension: time_spent {
    type: number
    sql: ${TABLE}.time_spent ;;
  }

  dimension: topsnap_views {
    type: number
    sql: ${TABLE}.topsnap_views ;;
  }

  dimension: topsnaps_unique_views {
    type: number
    sql: ${TABLE}.topsnaps_unique_views ;;
  }

  dimension: total_time_viewed_sec {
    type: number
    sql: ${TABLE}.total_time_viewed_sec ;;
  }

  dimension: unique_topsnap_per_user {
    type: number
    sql: ${TABLE}.unique_topsnap_per_user ;;
  }

  measure: count {
    type: count
    drill_fields: [channel_name]
  }
}
