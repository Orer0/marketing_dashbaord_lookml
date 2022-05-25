- dashboard: marketing_kpi
  title: Marketing_kpi
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Total
    name: Total
    model: aurelien_case_study_playground
    explore: marketing
    type: looker_column
    fields: [channel.channel_name, story.total_unique_topsnap_views]
    sorts: [story.total_unique_topsnap_views desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: marketing
      palette_id: marketing-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: story.total_unique_topsnap_views,
            id: story.total_unique_topsnap_views, name: Total Unique Topsnap Views}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hide_legend: false
    series_types: {}
    series_colors:
      story.total_unique_topsnap_views: "#06D1B0"
    defaults_version: 1
    hidden_fields: []
    title_hidden: true
    listen:
      Thematic: channel.thematic
      Channel Name: channel.channel_name
      Period Time: story.period_time
      Region: story.region
    row: 8
    col: 0
    width: 12
    height: 8
  - title: Week Variation
    name: Week Variation
    model: aurelien_case_study_playground
    explore: marketing
    type: looker_line
    fields: [channel.channel_name, story.total_unique_topsnap_views, story.publication_week]
    pivots: [channel.channel_name]
    fill_fields: [story.publication_week]
    sorts: [story.total_unique_topsnap_views desc 0, channel.channel_name]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: marketing
      palette_id: marketing-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: story.total_unique_topsnap_views,
            id: Accuse moi si tu peux - story.total_unique_topsnap_views, name: Accuse
              moi si tu peux}, {axisId: story.total_unique_topsnap_views, id: Beauty
              Hacks - story.total_unique_topsnap_views, name: Beauty Hacks}, {axisId: story.total_unique_topsnap_views,
            id: Beauty Wow - story.total_unique_topsnap_views, name: Beauty Wow},
          {axisId: story.total_unique_topsnap_views, id: Riddle Me This - story.total_unique_topsnap_views,
            name: Riddle Me This}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    title_hidden: true
    listen:
      Thematic: channel.thematic
      Channel Name: channel.channel_name
      Period Time: story.period_time
      Region: story.region
    row: 8
    col: 12
    width: 12
    height: 8
  - title: Geographic repartition
    name: Geographic repartition
    model: aurelien_case_study_playground
    explore: marketing
    type: looker_map
    fields: [story.region, story.total_unique_topsnap_views]
    sorts: [story.region]
    limit: 500
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_value_colors: ["#E08AF4", "#04E94F"]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: story.total_unique_topsnap_views,
            id: 2018-10-01 - story.total_unique_topsnap_views, name: '2018-10-01'}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_fields: []
    title_hidden: true
    listen:
      Thematic: channel.thematic
      Channel Name: channel.channel_name
      Period Time: story.period_time
      Region: story.region
    row: 16
    col: 0
    width: 12
    height: 8
  - title: Top 3 countries
    name: Top 3 countries
    model: aurelien_case_study_playground
    explore: marketing
    type: looker_bar
    fields: [story.region, story.total_unique_topsnap_views]
    sorts: [story.total_unique_topsnap_views desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: marketing
      palette_id: marketing-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: story.total_unique_topsnap_views,
            id: story.total_unique_topsnap_views, name: Total Unique Topsnap Views}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '3'
    hidden_series: []
    series_types: {}
    series_colors:
      story.total_unique_topsnap_views: "#06D1B0"
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_fields: []
    note_state: collapsed
    note_display: below
    note_text: TOP 3 COUNTRIES
    title_hidden: true
    listen:
      Thematic: channel.thematic
      Channel Name: channel.channel_name
      Period Time: story.period_time
      Region: story.region
    row: 16
    col: 12
    width: 12
    height: 8
  - name: ENGAGEMENT RATE
    type: text
    title_text: ENGAGEMENT RATE
    subtitle_text: ''
    body_text: ''
    row: 27
    col: 0
    width: 24
    height: 1
  - title: Riddle Me This
    name: Riddle Me This
    model: aurelien_case_study_playground
    explore: marketing
    type: single_value
    fields: [story.channel_name, story.engagement_rate]
    filters:
      story.channel_name: Riddle Me This
    sorts: [story.engagement_rate desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: story.total_unique_topsnap_views,
            id: 2018-10-01 - story.total_unique_topsnap_views, name: '2018-10-01'}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '3'
    hidden_series: []
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    listen:
      Thematic: channel.thematic
      Channel Name: channel.channel_name
      Period Time: story.period_time
      Region: story.region
    row: 28
    col: 0
    width: 6
    height: 5
  - title: Accuse moi si tu peux
    name: Accuse moi si tu peux
    model: aurelien_case_study_playground
    explore: marketing
    type: single_value
    fields: [story.channel_name, story.engagement_rate]
    filters:
      story.channel_name: Accuse moi si tu peux
    sorts: [story.engagement_rate desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: story.total_unique_topsnap_views,
            id: 2018-10-01 - story.total_unique_topsnap_views, name: '2018-10-01'}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '3'
    hidden_series: []
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    listen:
      Thematic: channel.thematic
      Channel Name: channel.channel_name
      Period Time: story.period_time
      Region: story.region
    row: 28
    col: 6
    width: 6
    height: 5
  - title: Beauty Hacks
    name: Beauty Hacks
    model: aurelien_case_study_playground
    explore: marketing
    type: single_value
    fields: [story.channel_name, story.engagement_rate]
    filters:
      story.channel_name: Beauty Hacks
    sorts: [story.engagement_rate desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: story.total_unique_topsnap_views,
            id: 2018-10-01 - story.total_unique_topsnap_views, name: '2018-10-01'}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '3'
    hidden_series: []
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    listen:
      Thematic: channel.thematic
      Channel Name: channel.channel_name
      Period Time: story.period_time
      Region: story.region
    row: 28
    col: 12
    width: 6
    height: 5
  - title: Beauty Wow
    name: Beauty Wow
    model: aurelien_case_study_playground
    explore: marketing
    type: single_value
    fields: [story.channel_name, story.engagement_rate]
    filters:
      story.channel_name: Beauty Wow
    sorts: [story.engagement_rate desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: story.total_unique_topsnap_views,
            id: 2018-10-01 - story.total_unique_topsnap_views, name: '2018-10-01'}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '3'
    hidden_series: []
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    listen:
      Thematic: channel.thematic
      Channel Name: channel.channel_name
      Period Time: story.period_time
      Region: story.region
    row: 28
    col: 18
    width: 6
    height: 5
  - title: Engagement By Channel
    name: Engagement By Channel
    model: aurelien_case_study_playground
    explore: marketing
    type: looker_pie
    fields: [story.total_engagement, story.channel_name]
    sorts: [story.total_engagement desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    inner_radius: 60
    start_angle: 90
    color_application:
      collection_id: marketing
      palette_id: marketing-categorical-0
      options:
        steps: 5
        reverse: false
    series_colors:
      Accuse moi si tu peux: "#4276BE"
      Riddle Me This: "#E08AF4"
      Beauty Hacks: "#06D1B0"
      Beauty Wow: "#04E94F"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: story.total_unique_topsnap_views,
            id: 2018-10-01 - story.total_unique_topsnap_views, name: '2018-10-01'}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '3'
    hidden_series: []
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    note_state: collapsed
    note_display: below
    note_text: Engagement By Channel
    title_hidden: true
    listen:
      Thematic: channel.thematic
      Channel Name: channel.channel_name
      Period Time: story.period_time
      Region: story.region
    row: 35
    col: 0
    width: 12
    height: 8
  - title: Table engagement
    name: Table engagement
    model: aurelien_case_study_playground
    explore: marketing
    type: looker_grid
    fields: [channel.channel_name, story.total_subscribers_engagement, story.total_screenshots_engagement,
      story.total_shares_engagement, story.total_att_views_engagement]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: marketing
      palette_id: marketing-categorical-0
      options:
        steps: 5
        reverse: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      channel.total_suscribers:
        is_active: true
      story.total_screenshots_engagement:
        is_active: true
        palette:
          palette_id: marketing-sequential-0
          collection_id: marketing
        value_display: true
      story.total_shares_engagement:
        is_active: true
      story.total_subscribers_engagement:
        is_active: true
      story.total_att_views_engagement:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '3'
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: labels
    label_type: labPer
    inner_radius: 60
    start_angle: 90
    series_colors:
      Accuse moi si tu peux: "#978DF7"
      Riddle Me This: "#E08AF4"
      Beauty Hacks: "#0993FF"
      Beauty Wow: "#04E94F"
    y_axes: [{label: '', orientation: left, series: [{axisId: story.total_unique_topsnap_views,
            id: 2018-10-01 - story.total_unique_topsnap_views, name: '2018-10-01'}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    font_size: 12
    hidden_fields: []
    note_state: collapsed
    note_display: below
    note_text: Engagement Type By Channel
    title_hidden: true
    listen:
      Thematic: channel.thematic
      Channel Name: channel.channel_name
      Period Time: story.period_time
      Region: story.region
    row: 44
    col: 0
    width: 24
    height: 4
  - title: Engagement By Thematic
    name: Engagement By Thematic
    model: aurelien_case_study_playground
    explore: marketing
    type: looker_pie
    fields: [story.total_engagement, channel.thematic]
    sorts: [story.total_engagement desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    inner_radius: 60
    start_angle: 90
    color_application:
      collection_id: marketing
      palette_id: marketing-categorical-0
      options:
        steps: 5
        reverse: true
    series_colors:
      Accuse moi si tu peux: "#978DF7"
      Riddle Me This: "#E08AF4"
      Beauty Hacks: "#0993FF"
      Beauty Wow: "#04E94F"
      Riddle: "#E08AF4"
      Beauty: "#06D1B0"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    truncate_header: true
    size_to_fit: true
    series_cell_visualizations:
      channel.total_suscribers:
        is_active: true
      story.total_screenshots_engagement:
        is_active: true
        palette:
          palette_id: marketing-sequential-0
          collection_id: marketing
      story.total_shares_engagement:
        is_active: true
      story.total_subscribers_engagement:
        is_active: true
      story.total_att_views_engagement:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '3'
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: story.total_unique_topsnap_views,
            id: 2018-10-01 - story.total_unique_topsnap_views, name: '2018-10-01'}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    font_size: 12
    hidden_fields: []
    note_state: collapsed
    note_display: below
    note_text: Engagement By Thematic
    title_hidden: true
    listen:
      Thematic: channel.thematic
      Channel Name: channel.channel_name
      Period Time: story.period_time
      Region: story.region
    row: 35
    col: 12
    width: 12
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "#REACH"
    row: 5
    col: 11
    width: 4
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "---"
    row: 33
    col: 0
    width: 24
    height: 2
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "# ENGAGEMENT"
    row: 25
    col: 10
    width: 5
    height: 2
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 24
    col: 0
    width: 24
    height: 1
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 43
    col: 0
    width: 24
    height: 1
  - title: periode
    name: periode
    model: aurelien_case_study_playground
    explore: marketing
    type: single_value
    fields: [story.periode_str]
    filters:
      story.publication_date: 2018/10/01 to 2018/10/31
    sorts: [story.periode_str]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: marketing
      palette_id: marketing-categorical-0
      options:
        steps: 5
        reverse: true
    value_labels: labels
    label_type: labPer
    inner_radius: 60
    start_angle: 90
    series_colors:
      Accuse moi si tu peux: "#978DF7"
      Riddle Me This: "#E08AF4"
      Beauty Hacks: "#0993FF"
      Beauty Wow: "#04E94F"
      Riddle: "#E08AF4"
      Beauty: "#04E94F"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    truncate_header: true
    size_to_fit: true
    series_cell_visualizations:
      channel.total_suscribers:
        is_active: true
      story.total_screenshots_engagement:
        is_active: true
        palette:
          palette_id: marketing-sequential-0
          collection_id: marketing
      story.total_shares_engagement:
        is_active: true
      story.total_subscribers_engagement:
        is_active: true
      story.total_att_views_engagement:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '3'
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    hide_totals: false
    hide_row_totals: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: story.total_unique_topsnap_views,
            id: 2018-10-01 - story.total_unique_topsnap_views, name: '2018-10-01'}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    font_size: 12
    hidden_fields: []
    listen:
      Period Time: story.period_time
      Region: story.region
    row: 0
    col: 18
    width: 6
    height: 1
  - name: WITH TOPSNAP UNIQUE VIEWS
    type: text
    title_text: WITH TOPSNAP UNIQUE VIEWS
    subtitle_text: ''
    body_text: ''
    row: 7
    col: 0
    width: 24
    height: 1
  - title: Engagement Rate
    name: Engagement Rate
    model: aurelien_case_study_playground
    explore: marketing
    type: single_value
    fields: [story.engagement_rate]
    sorts: [story.engagement_rate desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: story.total_unique_topsnap_views,
            id: 2018-10-01 - story.total_unique_topsnap_views, name: '2018-10-01'}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '3'
    hidden_series: []
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: Toal Engagement (screenshots, shares, subscriptions, attachement views)
      / Total Topsnap views
    listen:
      Thematic: channel.thematic
      Channel Name: channel.channel_name
      Period Time: story.period_time
      Region: story.region
    row: 1
    col: 18
    width: 6
    height: 4
  - title: Average Reach
    name: Average Reach
    model: aurelien_case_study_playground
    explore: marketing
    type: single_value
    fields: [story.avg_reach_in_period]
    sorts: [story.avg_reach_in_period desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: marketing
      palette_id: marketing-categorical-0
      options:
        steps: 5
        reverse: true
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: marketing, palette_id: marketing-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    value_labels: labels
    label_type: labPer
    inner_radius: 60
    start_angle: 90
    series_colors:
      Accuse moi si tu peux: "#978DF7"
      Riddle Me This: "#E08AF4"
      Beauty Hacks: "#0993FF"
      Beauty Wow: "#04E94F"
      Riddle: "#E08AF4"
      Beauty: "#04E94F"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    truncate_header: true
    size_to_fit: true
    series_cell_visualizations:
      channel.total_suscribers:
        is_active: true
      story.total_screenshots_engagement:
        is_active: true
        palette:
          palette_id: marketing-sequential-0
          collection_id: marketing
      story.total_shares_engagement:
        is_active: true
      story.total_subscribers_engagement:
        is_active: true
      story.total_att_views_engagement:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '3'
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    hide_totals: false
    hide_row_totals: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: story.total_unique_topsnap_views,
            id: 2018-10-01 - story.total_unique_topsnap_views, name: '2018-10-01'}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    font_size: 12
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: Total Topsnap Unique views / Number of days in the period
    listen:
      Period Time: story.period_time
      Region: story.region
    row: 1
    col: 12
    width: 6
    height: 4
  - title: Average Subscribers
    name: Average Subscribers
    model: aurelien_case_study_playground
    explore: marketing
    type: single_value
    fields: [channel.avg_suscribers]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: marketing
      palette_id: marketing-categorical-0
      options:
        steps: 5
        reverse: true
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: marketing, palette_id: marketing-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    value_labels: labels
    label_type: labPer
    inner_radius: 60
    start_angle: 90
    series_colors:
      Accuse moi si tu peux: "#978DF7"
      Riddle Me This: "#E08AF4"
      Beauty Hacks: "#0993FF"
      Beauty Wow: "#04E94F"
      Riddle: "#E08AF4"
      Beauty: "#04E94F"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    truncate_header: true
    size_to_fit: true
    series_cell_visualizations:
      channel.total_suscribers:
        is_active: true
      story.total_screenshots_engagement:
        is_active: true
        palette:
          palette_id: marketing-sequential-0
          collection_id: marketing
      story.total_shares_engagement:
        is_active: true
      story.total_subscribers_engagement:
        is_active: true
      story.total_att_views_engagement:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '3'
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    hide_totals: false
    hide_row_totals: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: story.total_unique_topsnap_views,
            id: 2018-10-01 - story.total_unique_topsnap_views, name: '2018-10-01'}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    font_size: 12
    note_state: collapsed
    note_display: hover
    note_text: Total Subscribers / Number of days in the selected period
    listen:
      Period Time: story.period_time
      Region: story.region
    row: 1
    col: 6
    width: 6
    height: 4
  - title: Total Subscriber
    name: Total Subscriber
    model: aurelien_case_study_playground
    explore: marketing
    type: single_value
    fields: [channel.total_suscribers]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: marketing
      palette_id: marketing-categorical-0
      options:
        steps: 5
        reverse: true
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: marketing, palette_id: marketing-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    value_labels: labels
    label_type: labPer
    inner_radius: 60
    start_angle: 90
    series_colors:
      Accuse moi si tu peux: "#978DF7"
      Riddle Me This: "#E08AF4"
      Beauty Hacks: "#0993FF"
      Beauty Wow: "#04E94F"
      Riddle: "#E08AF4"
      Beauty: "#04E94F"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    truncate_header: true
    size_to_fit: true
    series_cell_visualizations:
      channel.total_suscribers:
        is_active: true
      story.total_screenshots_engagement:
        is_active: true
        palette:
          palette_id: marketing-sequential-0
          collection_id: marketing
      story.total_shares_engagement:
        is_active: true
      story.total_subscribers_engagement:
        is_active: true
      story.total_att_views_engagement:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '3'
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    hide_totals: false
    hide_row_totals: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: story.total_unique_topsnap_views,
            id: 2018-10-01 - story.total_unique_topsnap_views, name: '2018-10-01'}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    font_size: 12
    listen:
      Period Time: story.period_time
      Region: story.region
    row: 1
    col: 0
    width: 6
    height: 4
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 18
    height: 1
  filters:
  - name: Period Time
    title: Period Time
    type: field_filter
    default_value: 2010/05/24 to 2018/10/31
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: aurelien_case_study_playground
    explore: marketing
    listens_to_filters: []
    field: story.period_time
  - name: Thematic
    title: Thematic
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: inline
      options: []
    model: aurelien_case_study_playground
    explore: marketing
    listens_to_filters: []
    field: channel.thematic
  - name: Channel Name
    title: Channel Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: aurelien_case_study_playground
    explore: marketing
    listens_to_filters: [Thematic]
    field: channel.channel_name
  - name: Region
    title: Region
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: aurelien_case_study_playground
    explore: marketing
    listens_to_filters: []
    field: story.region
