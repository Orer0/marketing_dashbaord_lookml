# OWNER : ARO
# DESCRIPTION : View - Channel Logical + Busines rules
# MAIN USE CASE : Dashboard Reach and Engagement

### INCLUDE BASIS VIEWS ###
include: "/views/basis/channel_basis.view.lkml"

view: +channel {

  ### DIMENSIONS ###
  dimension: thematic {
    ### ARO ###
    description: "Channel Thematic"
    sql:
    CASE
      WHEN ${channel_name} IN ('Riddle Me This', 'Accuse moi si tu peux')
        THEN 'Riddle'
      ELSE
        'Beauty'
    END
    ;;
    bypass_suggest_restrictions: yes
  }

  ### MEASURES ###
  measure: total_suscribers {
    group_label: "Subscribers"
    description: "Total Subscibers"
    drill_fields: [channel_name, total_suscribers]
    type: sum
    sql: ${suscribers} ;;
  }

  measure: avg_suscribers {
    group_label: "Subscribers"
    description: "Average subscribers per day during the selected period"
    drill_fields: [channel_name, avg_suscribers]
    type: number
    sql: ${total_suscribers} / NULLIF(${story.number_day_in_period_selected}, 0);;
    value_format_name: decimal_0
  }
}
