# OWNER : ARO
# DESCRIPTION : View - Story data bq Basis
# MAIN USE CASE : Dashboard Reach and Engagement

### ADDONS INCLUDE ###
include: "/addons/time_analysis.view.lkml"

view: story {
  sql_table_name: `sandbox-aroblin.marketing.story`
    ;;

  extends: [time_analysis]

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    sql: CONCAT(${channel_name}, '|', ${story_name}, '|', ${region}, '|', ${publication_date}) ;;
  }

  dimension: att_time_viewed_sec {
    description: "Total time spent in the attachment(s) in seconds"
    type: number
    sql: ${TABLE}.att_time_viewed_sec ;;
  }

  dimension: att_views {
    description: "Total number of swipe up views. Not unique, just total views"
    type: number
    sql: ${TABLE}.att_views ;;
  }

  dimension: channel_name {
    description: "Name of the channel"
    type: string
    sql: ${TABLE}.channel_name ;;
  }

  dimension_group: publication {
    description: "The date the Story went live"
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
    description: "Metrics region of the report. Contains a 'Global' entry in addition to local regions"
    map_layer_name: countries
    sql: ${TABLE}.region ;;
    bypass_suggest_restrictions: yes
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

  dimension: shares_unique {
    description: "Unique number of users who shared this piece of content"
    type: number
    sql: ${TABLE}.shares_unique ;;
  }

  dimension: story_name {
    description: "Name of the story"
    type: string
    sql: ${TABLE}.story_name ;;
  }

  dimension: subscribers_added {
    description: "Number of new subscribers added on this piece of content"
    type: number
    sql: ${TABLE}.subscribers_added ;;
  }

  dimension: tags {
    description: "Labels attached to the story for the purpose of understanding what the content is about"
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: topsnap_time_viewed_sec {
    description: "Total time spent in the snap(s) in seconds"
    type: number
    sql: ${TABLE}.topsnap_time_viewed_sec ;;
  }

  dimension: topsnap_unique_views {
    description: "Sum total number of unique users for each Topsnap in the Story"
    type: number
    sql: ${TABLE}.topsnap_unique_views ;;
  }

  dimension: topsnap_views {
    description: "Total number of Topsnap views. Not unique, just total views"
    type: number
    sql: ${TABLE}.topsnap_views ;;
  }

  dimension: unique_completers {
    description: "Number of unique users who completed all available content. For Stories, this is viewing through the last available snap in addition to local regions"
    type: number
    sql: ${TABLE}.unique_completers ;;
  }

  dimension: unique_viewers {
    description: "Unique number of users that clicked into the Story or began loading a snap"
    type: number
    sql: ${TABLE}.unique_viewers ;;
  }

  dimension: viewers_from_shares {
    description: "Unique number of users who viewed this piece of content via a share"
    type: number
    sql: ${TABLE}.viewers_from_shares ;;
  }
}
