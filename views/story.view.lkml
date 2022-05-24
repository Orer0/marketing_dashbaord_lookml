# OWNER : ARO
# DESCRIPTION : View - Channel data bq
# MAIN USE CASE : Dashboard Reach and Engagement

view: story {
  sql_table_name: `sandbox-aroblin.marketing.story`
    ;;

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

  dimension: start_date {
    hidden: yes
    sql: {% date_start ${publication_date} %} ;;
  }

  dimension: end_date {
    hidden: yes
    sql: DATE_SUB({% date_end ${publication_date} %}, INTERVAL 1 day) ;;
  }

  dimension: periode_str {
    sql: CONCAT("Periode between ", ${start_date}, " and ", ${end_date}) ;;
    html: <p style="font-size:50%;line-height:1em">{{periode_str._rendered_value}} ;;
  }

  dimension: region {
    description: "Metrics region of the report. Contains a 'Global' entry in addition to local regions"
    map_layer_name: countries
    sql: ${TABLE}.region ;;
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

  ### MEASURES ###

  measure: total_unique_topsnap_views {
    description: "Total unique Topsnap views"
    drill_fields: [story_name, total_unique_topsnap_views]
    type: sum
    sql: ${topsnap_unique_views} ;;
  }

  measure: total_topsnap_views {
    description: "Total unique Topsnap views"
    drill_fields: [story_name, total_topsnap_views]
    type: sum
    sql: ${topsnap_views} ;;
  }

  measure: total_att_views_engagement {
    label: "Total Attachment Views"
    description: "Total engagement : attachment"
    drill_fields: [story_name, total_att_views_engagement]
    type: sum
    sql: ${att_views} ;;
  }

  measure: total_shares_engagement {
    label: "Total Shares"
    description: "Total engagement : shares"
    drill_fields: [story_name, total_shares_engagement]
    type: sum
    sql: ${shares} ;;
  }

  measure: total_screenshots_engagement {
    label: "Total Screenshots"
    description: "Total engagement : screenshots"
    drill_fields: [story_name, total_screenshots_engagement]
    type: sum
    sql: ${screenshots} ;;
  }

  measure: total_subscribers_engagement {
    label: "Total Subcribers"
    description: "Total engagement : subscribers"
    drill_fields: [story_name, total_subscribers_engagement]
    type: sum
    sql: ${subscribers_added} ;;
  }

  measure: total_engagement {
    description: "Total engagement (shares, screen, attachment, subscribers_added)"
    drill_fields: [story_name, total_att_views_engagement, total_shares_engagement, total_screenshots_engagement, total_subscribers_engagement]
    type: sum
    sql: ${att_views} + ${shares} + ${screenshots} + ${subscribers_added};;
  }

  measure: engagement_rate {
    description: "engagement / total views"
    drill_fields: [story_name, total_att_views_engagement, total_shares_engagement, total_screenshots_engagement, total_subscribers_engagement, total_topsnap_views]
    type: number
    sql: ${total_engagement} / NULLIF(${total_topsnap_views}, 0) ;;
    value_format_name: percent_2
  }
}
