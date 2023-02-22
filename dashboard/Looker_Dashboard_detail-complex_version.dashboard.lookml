- dashboard: looker_demo_detail__complex
  title: Looker Demo Detail - Complex
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: wp3FE1MQ1ZrnABHOGrpVLT
  elements:
  - title: Product Cost By Timeline
    name: Product Cost By Timeline
    model: btg_looker_demo
    explore: adventure_works_customers
    type: looker_grid
    fields: [sales_consolidated.dynamic_timeframe, sales_consolidated.Order_count,
      adventure_works_products.total_product_cost]
    filters:
      sales_consolidated.dynamic_timeframe: "-NULL"
    sorts: [sales_consolidated.Order_count desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
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
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      sales_consolidated.dynamic_timeframe: Timeframe
    series_cell_visualizations:
      sales_consolidated.Order_count:
        is_active: false
    series_value_format:
      adventure_works_products.total_product_cost:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '12'
    series_types: {}
    value_labels: labels
    label_type: labPer
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Date Granularity: sales_consolidated.timeframe_picker
    row: 1
    col: 0
    width: 24
    height: 12
  - title: Revenue By Category
    name: Revenue By Category
    model: btg_looker_demo
    explore: adventure_works_customers
    type: looker_grid
    fields: [adventure_works_product_categories.drill_check, adventure_works_products.total_revenue]
    filters:
      adventure_works_product_categories.drill_check: "-NULL"
    sorts: [adventure_works_products.total_revenue desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
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
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      adventure_works_products.total_product_cost:
        is_active: false
    series_value_format:
      adventure_works_products.total_revenue:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
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
    defaults_version: 1
    series_types: {}
    hidden_pivots: {}
    listen: {}
    row: 13
    col: 0
    width: 24
    height: 3
  - title: Revenue,Orders By Customer
    name: Revenue,Orders By Customer
    model: btg_looker_demo
    explore: adventure_works_customers
    type: looker_grid
    fields: [adventure_works_products.total_revenue, sales_consolidated.Order_count_m,
      adventure_works_customers.first_name]
    filters:
      adventure_works_product_categories.drill_check: "-NULL"
    sorts: [adventure_works_products.total_revenue desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
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
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", adventure_works_customers.first_name, sales_consolidated.Order_count_m,
      adventure_works_products.total_revenue]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      sales_consolidated.Order_count_m: Total Orders
      adventure_works_customers.first_name: Customer Name
    series_cell_visualizations:
      adventure_works_products.total_product_cost:
        is_active: false
      sales_consolidated.Order_count_m:
        is_active: true
    series_value_format:
      adventure_works_products.total_revenue:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    legend_position: center
    label_value_format: ''
    series_types: {}
    point_style: circle
    series_point_styles: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 16
    col: 0
    width: 24
    height: 5
  - type: button
    name: button_3500
    rich_content_json: '{"text":"Back To Summary","description":"","newTab":false,"alignment":"right","size":"small","style":"FILLED","color":"#12B5CB","href":"https://tataconsultingservices.looker.com/dashboards/btg_looker_demo::looker_demo_summary__complex?Year=&Month="}'
    row: 0
    col: 0
    width: 24
    height: 1
  filters:
  - name: Date Granularity
    title: Date Granularity
    type: field_filter
    default_value: Year
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: btg_looker_demo
    explore: adventure_works_customers
    listens_to_filters: []
    field: sales_consolidated.timeframe_picker
