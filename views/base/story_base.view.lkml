view: story {
  sql_table_name: `sandbox-aroblin.marketing.story`
    ;;

  dimension: att_time_viewed_sec {
    type: number
    sql: ${TABLE}.att_time_viewed_sec ;;
  }

  dimension: att_views {
    type: number
    sql: ${TABLE}.att_views ;;
  }

  dimension: channel_name {
    type: string
    sql: ${TABLE}.channel_name ;;
  }

  dimension_group: publication {
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
    sql: ${TABLE}.publication_date ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: screenshots {
    type: number
    sql: ${TABLE}.screenshots ;;
  }

  dimension: shares {
    type: number
    sql: ${TABLE}.shares ;;
  }

  dimension: shares_unique {
    type: number
    sql: ${TABLE}.shares_unique ;;
  }

  dimension: story_name {
    type: string
    sql: ${TABLE}.story_name ;;
  }

  dimension: subscribers_added {
    type: number
    sql: ${TABLE}.subscribers_added ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: topsnap_time_viewed_sec {
    type: number
    sql: ${TABLE}.topsnap_time_viewed_sec ;;
  }

  dimension: topsnap_unique_views {
    type: number
    sql: ${TABLE}.topsnap_unique_views ;;
  }

  dimension: topsnap_views {
    type: number
    sql: ${TABLE}.topsnap_views ;;
  }

  dimension: unique_completers {
    type: number
    sql: ${TABLE}.unique_completers ;;
  }

  dimension: unique_viewers {
    type: number
    sql: ${TABLE}.unique_viewers ;;
  }

  dimension: viewers_from_shares {
    type: number
    sql: ${TABLE}.viewers_from_shares ;;
  }

  measure: count {
    type: count
    drill_fields: [channel_name, story_name]
  }
}
