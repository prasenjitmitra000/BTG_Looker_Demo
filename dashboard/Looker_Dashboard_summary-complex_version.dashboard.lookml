- dashboard: looker_demo_summary__complex
  title: Looker Demo Summary - Complex
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: kXRgR4aGIiaxW9S5QNCV8z
  elements:
  - title: Orders By Gender
    name: Orders By Gender
    model: btg_looker_demo
    explore: adventure_works_customers
    type: looker_pie
    fields: [adventure_works_customers.gender, sales_consolidated.Order_count]
    sorts: [sales_consolidated.Order_count desc 0]
    limit: 500
    value_labels: labels
    label_type: labPer
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
    limit_displayed_rows: false
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
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    font_size: 12
    listen:
      Year: sales_consolidated.year_f
      Month: sales_consolidated.month_f
    row: 10
    col: 0
    width: 9
    height: 7
  - title: Total Orders By Category
    name: Total Orders By Category
    model: btg_looker_demo
    explore: adventure_works_customers
    type: TreeMap
    fields: [sales_consolidated.Order_count, adventure_works_product_categories.category_name]
    sorts: [sales_consolidated.Order_count desc 0]
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    value_labels: labels
    label_type: labPer
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    font_size: 12
    listen:
      Year: sales_consolidated.year_f
      Month: sales_consolidated.month_f
    row: 10
    col: 9
    width: 15
    height: 7
  - title: Total Orders By Sub category
    name: Total Orders By Sub category
    model: btg_looker_demo
    explore: adventure_works_customers
    type: looker_bar
    fields: [adventure_works_product_subcategories.subcategory_name, sales_consolidated.Order_count_m]
    sorts: [sales_consolidated.Order_count_m desc 0]
    limit: 500
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
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '12'
    series_types: {}
    series_labels: {}
    value_labels: labels
    label_type: labPer
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    hidden_pivots: {}
    listen:
      Year: sales_consolidated.year_f
      Month: sales_consolidated.month_f
    row: 6
    col: 6
    width: 18
    height: 4
  - type: button
    name: button_3487
    rich_content_json: '{"text":"Go to Detail","description":"","newTab":false,"alignment":"right","size":"small","style":"FILLED","color":"#12B5CB","href":"https://tataconsultingservices.looker.com/dashboards/btg_looker_demo::looker_demo_detail__complex?Date%20Granularity=Year"}'
    row: 0
    col: 0
    width: 24
    height: 1
  - title: Total Revenue
    name: Total Revenue
    model: btg_looker_demo
    explore: adventure_works_customers
    type: single_value
    fields: [adventure_works_products.total_revenue]
    filters:
      adventure_works_product_categories.drill_check: "-NULL"
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
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", adventure_works_products.product_name, sales_consolidated.Order_count_m,
      adventure_works_products.total_revenue]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      sales_consolidated.Order_count_m: Total Orders
      adventure_works_customers.first_name: Customer Name
    series_cell_visualizations:
      adventure_works_products.total_product_cost:
        is_active: false
      sales_consolidated.Order_count_m:
        is_active: false
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    series_value_format:
      adventure_works_products.total_revenue:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
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
    listen:
      Year: sales_consolidated.year_f
      Month: sales_consolidated.month_f
    row: 1
    col: 0
    width: 6
    height: 5
  - title: Total Ordes
    name: Total Ordes
    model: btg_looker_demo
    explore: adventure_works_customers
    type: single_value
    fields: [sales_consolidated.Order_count_m]
    filters:
      adventure_works_product_categories.drill_check: "-NULL"
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", adventure_works_products.product_name, sales_consolidated.Order_count_m,
      adventure_works_products.total_revenue]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      sales_consolidated.Order_count_m: Total Orders
      adventure_works_customers.first_name: Customer Name
    series_cell_visualizations:
      adventure_works_products.total_product_cost:
        is_active: false
      sales_consolidated.Order_count_m:
        is_active: false
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    series_value_format:
      adventure_works_products.total_revenue:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
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
    listen:
      Year: sales_consolidated.year_f
      Month: sales_consolidated.month_f
    row: 6
    col: 0
    width: 6
    height: 4
  - title: Total Revenue By Year
    name: Total Revenue By Year
    model: btg_looker_demo
    explore: adventure_works_customers
    type: looker_line
    fields: [adventure_works_products.total_revenue, sales_consolidated.date_field_year]
    fill_fields: [sales_consolidated.date_field_year]
    filters:
      adventure_works_product_categories.drill_check: "-NULL"
    sorts: [sales_consolidated.date_field_year desc]
    limit: 500
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: ''
    series_types: {}
    series_labels:
      sales_consolidated.Order_count_m: Total Orders
      adventure_works_customers.first_name: Customer Name
    series_point_styles: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", adventure_works_products.product_name, sales_consolidated.Order_count_m,
      adventure_works_products.total_revenue]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      adventure_works_products.total_product_cost:
        is_active: false
      sales_consolidated.Order_count_m:
        is_active: false
    table_theme: white
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    series_value_format:
      adventure_works_products.total_revenue:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
    hide_totals: false
    hide_row_totals: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Year: sales_consolidated.year_f
      Month: sales_consolidated.month_f
    row: 1
    col: 6
    width: 18
    height: 5
  - title: Return Rate By Products
    name: Return Rate By Products
    model: btg_looker_demo
    explore: adventure_works_customers
    type: looker_grid
    fields: [adventure_works_products.product_name, sales_consolidated.Order_count_m,
      adventure_works_returns.return_m]
    filters:
      adventure_works_product_categories.drill_check: "-NULL"
      sales_consolidated.Order_count_m: NOT NULL
      adventure_works_returns.return_m: NOT NULL
    sorts: [adventure_works_products.product_name]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(${adventure_works_returns.return_m}/${sales_consolidated.Order_count_m})",
        label: Return Rate, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: return_rate, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", adventure_works_products.product_name, sales_consolidated.Order_count_m,
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
        is_active: false
    conditional_formatting: [{type: greater than, value: 0.03, background_color: "#FF0000",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: [return_rate]}]
    series_value_format:
      adventure_works_products.total_revenue:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
      return_rate:
        name: percent_1
        decimals: '1'
        format_string: "#,##0.0%"
        label: Percent (1)
        label_prefix: Percent
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [adventure_works_returns.return_m]
    listen:
      Year: sales_consolidated.year_f
      Month: sales_consolidated.month_f
    row: 17
    col: 0
    width: 24
    height: 7
  - title: Top 10 Product By Revenue
    name: Top 10 Product By Revenue
    model: btg_looker_demo
    explore: adventure_works_customers
    type: looker_wordcloud
    fields: [adventure_works_products.product_name, adventure_works_products.total_revenue]
    filters:
      adventure_works_product_categories.drill_check: "-NULL"
    sorts: [adventure_works_products.total_revenue desc 0]
    limit: 10
    color_application: undefined
    rotation: false
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
    series_labels:
      sales_consolidated.Order_count_m: Total Orders
      adventure_works_customers.first_name: Customer Name
    series_point_styles: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    column_order: ["$$$_row_numbers_$$$", adventure_works_products.product_name, sales_consolidated.Order_count_m,
      adventure_works_products.total_revenue]
    listen:
      Year: sales_consolidated.year_f
      Month: sales_consolidated.month_f
    row:
    col:
    width:
    height:
  - title: Return Rate By Year
    name: Return Rate By Year
    model: btg_looker_demo
    explore: adventure_works_customers
    type: looker_area
    fields: [adventure_works_returns.return_m, sales_consolidated.Order_count_m, sales_consolidated.monthyear]
    filters:
      adventure_works_product_categories.drill_check: "-NULL"
      sales_consolidated.Order_count_m: NOT NULL
      adventure_works_returns.return_m: NOT NULL
    sorts: [adventure_works_returns.return_m desc 0]
    limit: 20
    dynamic_fields: [{category: table_calculation, expression: 'sum(${sales_consolidated.Order_count_d}*${adventure_works_products.product_price})',
        label: Revenue, value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: revenue, _type_hint: number, is_disabled: true}, {category: table_calculation,
        expression: "(${adventure_works_returns.return_m}/${sales_consolidated.Order_count_m})",
        label: return rate perc, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: return_rate_perc, _type_hint: number}]
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    label_value_format: ''
    series_types: {}
    series_colors:
      adventure_works_returns.return_m: "#B32F37"
    series_labels:
      sales_consolidated.Order_count_m: Total Orders
      adventure_works_customers.first_name: Customer Name
      return_rate_perc: Return Rate
    series_point_styles: {}
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    circleThickness: 0.5
    circleFillGap: 0.5
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", adventure_works_products.product_name, sales_consolidated.Order_count_m,
      adventure_works_products.total_revenue]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      adventure_works_products.total_product_cost:
        is_active: false
      sales_consolidated.Order_count_m:
        is_active: false
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: greater than, value: 0.03, background_color: "#FF0000",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: []}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      adventure_works_products.total_revenue:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
      return_rate:
        name: percent_1
        decimals: '1'
        format_string: "#,##0.0%"
        label: Percent (1)
        label_prefix: Percent
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hide_totals: false
    hide_row_totals: false
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [adventure_works_returns.return_m, sales_consolidated.Order_count_m]
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    hidden_points_if_no: []
    listen: {}
    row:
    col:
    width:
    height:
  - title: Total Order range through years
    name: Total Order range through years
    model: btg_looker_demo
    explore: adventure_works_customers
    type: looker_waterfall
    fields: [sales_consolidated.date_field_year, sales_consolidated.Order_count_m]
    filters:
      adventure_works_product_categories.drill_check: "-NULL"
      sales_consolidated.Order_count_m: NOT NULL
      adventure_works_returns.return_m: NOT NULL
    sorts: [sales_consolidated.date_field_year desc]
    limit: 20
    dynamic_fields: [{category: table_calculation, expression: 'sum(${sales_consolidated.Order_count_d}*${adventure_works_products.product_price})',
        label: Revenue, value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: revenue, _type_hint: number, is_disabled: true}, {category: table_calculation,
        expression: "(${adventure_works_returns.return_m}/${sales_consolidated.Order_count_m})",
        label: return rate perc, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: return_rate_perc, _type_hint: number,
        is_disabled: true}]
    up_color: false
    down_color: false
    total_color: false
    show_value_labels: true
    show_x_axis_ticks: true
    show_x_axis_label: true
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: true
    x_axis_gridlines: false
    show_view_names: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: []
    legend_position: center
    label_value_format: ''
    series_types: {}
    point_style: circle
    series_colors:
      adventure_works_returns.return_m: "#B32F37"
    series_labels:
      sales_consolidated.Order_count_m: Total Orders
      adventure_works_customers.first_name: Customer Name
      return_rate_perc: Return Rate
    series_point_styles: {}
    label_density: 25
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    circleThickness: 0.5
    circleFillGap: 0.5
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", adventure_works_products.product_name, sales_consolidated.Order_count_m,
      adventure_works_products.total_revenue]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      adventure_works_products.total_product_cost:
        is_active: false
      sales_consolidated.Order_count_m:
        is_active: false
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: greater than, value: 0.03, background_color: "#FF0000",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: []}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      adventure_works_products.total_revenue:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
      return_rate:
        name: percent_1
        decimals: '1'
        format_string: "#,##0.0%"
        label: Percent (1)
        label_prefix: Percent
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hide_totals: false
    hide_row_totals: false
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: []
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    hidden_points_if_no: []
    listen: {}
    row:
    col:
    width:
    height:
  filters:
  - name: Year
    title: Year
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: btg_looker_demo
    explore: adventure_works_customers
    listens_to_filters: []
    field: sales_consolidated.year_f
  - name: Month
    title: Month
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: btg_looker_demo
    explore: adventure_works_customers
    listens_to_filters: []
    field: sales_consolidated.month_f
