# OWNER : ARO
# DESCRIPTION : Time Analysis - Addons

view: time_analysis {

  extension: required

  filter: period_time {
    type: date
    suggest_dimension: publication_date
  }

  parameter: analyse_previous_period {
    type: yesno
  }

  dimension: start_date {
    hidden: yes
    sql: DATE({% date_start period_time  %}) ;;
  }

  dimension: end_date {
    hidden: yes
    sql: DATE({% date_end period_time %}) ;;
  }

  dimension: start_date_previous {
    hidden: yes
    sql: DATE_SUB(${start_date}, INTERVAL 1 MONTH);;
  }

  dimension: end_date_previous {
    hidden: yes
    sql: DATE_SUB(${end_date}, INTERVAL 1 MONTH) ;;
  }

  dimension: periode_str {
    sql: CONCAT("Periode from ", ${start_date}, " until ", ${end_date}) ;;
    html: <p style="font-size:50%;line-height:1em">{{periode_str._rendered_value}} ;;
  }

  dimension: number_day_in_period_selected {
    hidden: yes
    sql: DATE_DIFF(${end_date}, ${start_date}, day) ;;
  }

  dimension: period_pop_straight {
    group_label: "Time Analysis"
    label: "Period"
    description: "Select for Comparison (Pivot)"
    type: string
    sql:
      CASE
        WHEN ${publication_date} BETWEEN ${start_date} AND ${end_date}
        THEN 'First Period'
        WHEN ${publication_date} BETWEEN ${start_date_previous} AND ${end_date_previous}
        THEN 'Second Period'
      END
    ;;
  }
}
