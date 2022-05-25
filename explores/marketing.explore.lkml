# OWNER : ARO
# DESCRIPTION : Explore - Marketing
# MAIN USE CASE : Dashboard Reach and Engagement

### INCLUDE VIEWS ###
include: "/views/logical/channel_logical.view.lkml"
include: "/views/logical/story_logical.view.lkml"

explore: marketing {
  view_name: story
  group_label: "Aurelien"
  label: "Marketing"
  view_label: "Stories"

  join: channel {
    view_label: "Channel"
    type: full_outer
    relationship: many_to_one
    sql_on: ${story.channel_name} = ${channel.channel_name}
     AND ${story.publication_date} = ${channel.datestat_date};;
  }

  sql_always_where: ${story.region} != 'GLOBAL'
    AND ${story.publication_date} BETWEEN ${story.start_date} and ${story.end_date}
    {% if story.analyse_previous_period._parameter_value == 'true' %}
      OR ${story.publication_date} BETWEEN ${story.start_date_previous} and ${story.end_date_previous}
    {% endif %}
    ;;
}
