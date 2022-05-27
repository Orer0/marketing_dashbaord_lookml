# OWNER : ARO
# DESCRIPTION : View - Channel data bq Basis
# MAIN USE CASE : Dashboard Reach and Engagement

### INCLUDE BASE VIEW ###
include: "/views/base/channel_base.view.lkml"

view: +channel {
  sql_table_name: `sandbox-aroblin.marketing.channel`
    ;;

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    sql: CONCAT(${channel_name}, '|', ${datestat_date}) ;;
  }

  dimension: channel_name {
    description: "Name of the channel"
    type: string
    sql: ${TABLE}.channel_name ;;
    bypass_suggest_restrictions: yes
  }

  dimension: daily_unique {
    description: "Number of unique Snapchatters that engaged with the channel per 24 hours"
    type: number
    sql: ${TABLE}.daily_unique ;;
  }

  dimension_group: datestat {
    description: "Date of the stats"
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
    description: "Snapchatters who view your channel return to your account in a given weekly period : 3-4 days per week"
    type: number
    sql: ${TABLE}.frq_users ;;
  }

  dimension: loyal_users {
    description: "Snapchatters who view your channel return to your account in a given weekly period : 5-7 days per week"
    type: number
    sql: ${TABLE}.loyal_users ;;
  }

  dimension: monthly_unique {
    description: "Number of unique Snapchatters that engaged with the channel per 30 days"
    type: number
    sql: ${TABLE}.monthly_unique ;;
  }

  dimension: new_suscribers_per_day {
    description: "Number of new unique Snapchatters that are subscribed to your channel compared to previous day subscribers"
    type: number
    sql: ${TABLE}.new_suscribers_per_day ;;
  }

  dimension: new_users {
    description: "Snapchatters who view your channel return to your account in a given weekly period : 1 day per week"
    type: number
    sql: ${TABLE}.new_users ;;
  }

  dimension: return_users {
    description: "Snapchatters who view your channel return to your account in a given weekly period : 2 days per week"
    type: number
    sql: ${TABLE}.return_users ;;
  }

  dimension: screenshots {
    description: "Number of screenshots"
    type: number
    sql: ${TABLE}.screenshots ;;
  }

  dimension: shares {
    description: "Distinct edge shares (i.e. 1 person sharing to 3 friends = 3 shares)."
    type: number
    sql: ${TABLE}.shares ;;
  }

  dimension: suscribers {
    description: "Number of unique Snapchatters that are subscribed to your channel on a given day"
    type: number
    sql: ${TABLE}.suscribers ;;
  }

  dimension: time_spent {
    description: "total_time_viewed_sec / daily_unique"
    type: number
    sql: ${TABLE}.time_spent ;;
  }

  dimension: topsnap_views {
    description: "Total number of Topsnap views. Not unique, just total views"
    type: number
    sql: ${TABLE}.topsnap_views ;;
  }

  dimension: topsnaps_unique_views {
    description: "Sum total number of unique users for each Topsnap in the Story"
    type: number
    sql: ${TABLE}.topsnaps_unique_views ;;
  }

  dimension: total_time_viewed_sec {
    description: "Total time spent in the Story in seconds"
    type: number
    sql: ${TABLE}.total_time_viewed_sec ;;
  }

  dimension: unique_topsnap_per_user {
    description: "Average number of Topsnaps in your Story viewed by Snapchatters"
    type: number
    sql: ${TABLE}.unique_topsnap_per_user ;;
  }
}
