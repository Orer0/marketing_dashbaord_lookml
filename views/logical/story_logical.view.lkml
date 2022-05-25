# OWNER : ARO
# DESCRIPTION : View - Story Logical
# MAIN USE CASE : Dashboard Reach and Engagement

### INCLUDE BASIS VIEWS ###
include: "/views/basis/story_basis.view.lkml"

view: +story {

  ### MEASURES ###

  #--- REACH ---#
  measure: total_unique_topsnap_views {
    group_label: "Reach"
    description: "Total unique Topsnap views"
    drill_fields: [channel_name, story_name, total_unique_topsnap_views]
    type: sum
    sql: ${topsnap_unique_views} ;;
  }

  measure: avg_reach_in_period {
    group_label: "Reach"
    description: "Average reach during the selected period"
    drill_fields: [channel_name, story_name, avg_reach_in_period]
    type: number
    sql: ${total_unique_topsnap_views} / NULLIF(${number_day_in_period_selected}, 0) ;;
    value_format_name: decimal_0
  }

  #--- VIEWS ---#
  measure: total_topsnap_views {
    group_label: "Views"
    description: "Total unique Topsnap views"
    drill_fields: [story_name, total_topsnap_views]
    type: sum
    sql: ${topsnap_views} ;;
  }

  #--- ENGAGEMENT ---#
  measure: total_att_views_engagement {
    group_label: "Engagement"
    label: "Total Attachment Views"
    description: "Total engagement : attachment"
    drill_fields: [story_name, total_att_views_engagement]
    type: sum
    sql: ${att_views} ;;
  }

  measure: total_shares_engagement {
    group_label: "Engagement"
    label: "Total Shares"
    description: "Total engagement : shares"
    drill_fields: [story_name, total_shares_engagement]
    type: sum
    sql: ${shares} ;;
  }

  measure: total_screenshots_engagement {
    group_label: "Engagement"
    label: "Total Screenshots"
    description: "Total engagement : screenshots"
    drill_fields: [story_name, total_screenshots_engagement]
    type: sum
    sql: ${screenshots} ;;
  }

  measure: total_subscribers_engagement {
    group_label: "Engagement"
    label: "Total Subcribers"
    description: "Total engagement : subscribers"
    drill_fields: [story_name, total_subscribers_engagement]
    type: sum
    sql: ${subscribers_added} ;;
  }

  measure: total_engagement {
    group_label: "Engagement"
    description: "Total engagement (shares, screen, attachment, subscribers_added)"
    drill_fields: [story_name, total_att_views_engagement, total_shares_engagement, total_screenshots_engagement, total_subscribers_engagement]
    type: sum
    sql: ${att_views} + ${shares} + ${screenshots} + ${subscribers_added};;
  }

  measure: engagement_rate {
    group_label: "Engagement"
    description: "engagement / total views"
    drill_fields: [channel_name, story_name, total_att_views_engagement, total_shares_engagement, total_screenshots_engagement, total_subscribers_engagement, total_topsnap_views]
    type: number
    sql: ${total_engagement} / NULLIF(${total_topsnap_views}, 0) ;;
    value_format_name: percent_2
  }
}
