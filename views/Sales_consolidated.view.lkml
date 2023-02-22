view: sales_consolidated {
  derived_table: {
    sql:  SELECT *,count(distinct OrderNumber) as ordercount  FROM `ai-accelerators-dai.BTG_Looker_Demo.AdventureWorks_Sales_2015`
           group by OrderDate,  StockDate,  OrderNumber ,ProductKey,  CustomerKey,  TerritoryKey, OrderLineItem,  OrderQuantity
           UNION ALL
      SELECT * ,count(distinct OrderNumber) as ordercount FROM `ai-accelerators-dai.BTG_Looker_Demo.AdventureWorks_Sales_2016`
      group by OrderDate, StockDate,  OrderNumber ,ProductKey,  CustomerKey,  TerritoryKey, OrderLineItem,  OrderQuantity
           UNION ALL
      SELECT *,count(distinct OrderNumber) as ordercount  FROM `ai-accelerators-dai.BTG_Looker_Demo.AdventureWorks_Sales_2017`
      group by OrderDate, StockDate,  OrderNumber ,ProductKey,  CustomerKey,  TerritoryKey, OrderLineItem,  OrderQuantity
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: order_date {
    type: date
    datatype: date
    sql: ${TABLE}.OrderDate ;;
  }

  dimension: order_date_year {
    type: date
    datatype: date
    sql: extract(year from ${TABLE}.OrderDate) ;;
  }

  dimension: year_f {
    type: string

    sql: cast(${order_date_year} as string) ;;
  }

  dimension: order_date_month {
    type: date
    datatype: date
    sql: left(FORMAT_DATE('%B', ${TABLE}.OrderDate),3) ;;
  }

  dimension: month_f {
    type: string

    sql: ${order_date_month} ;;
  }

  dimension: monthyear {
    type: string
    sql: concat(${order_date_month},'-',${order_date_year});;
    order_by_field: order_date_year
  }

  dimension: order_date_quarter {
    type: date
    datatype: date
    sql: CONCAT('Q',FORMAT_DATE('%Q', ${TABLE}.OrderDate)) ;;
  }

  parameter: timeframe_picker {
    label: "Date Granularity"
    type: string
    allowed_value: { value: "Year" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Date" }
    default_value: "Year"
  }

  dimension: dynamic_timeframe {
    type: string
    label_from_parameter: timeframe_picker
    sql:
    {% if timeframe_picker._parameter_value == "'Year'" %}
    ${order_date_year}
    {% elsif timeframe_picker._parameter_value == "'Quarter'" %}
    ${order_date_quarter}
    {% elsif timeframe_picker._parameter_value == "'Month'" %}
    ${order_date_month}
    {% elsif timeframe_picker._parameter_value == "'Date'" %}
    ${order_date}

    {% endif %} ;;
      }
  dimension_group: date_field {
    type: time
    timeframes: [year, month, month_num, month_name, date]
    sql: ${TABLE}.OrderDate ;;
     }

  dimension: stock_date {
    type: date
    datatype: date
    sql: ${TABLE}.StockDate ;;
  }

  dimension: order_number {
    primary_key: yes
    type: string
    sql: ${TABLE}.OrderNumber ;;
  }

  measure: total_orders {
    type: count_distinct
    sql: ${TABLE}.OrderNumber ;;
  }

  dimension: product_key {
    type: number
    sql: ${TABLE}.ProductKey ;;
  }

  dimension: customer_key {
    type: number
    sql: ${TABLE}.CustomerKey ;;
  }

  dimension: territory_key {
    type: number
    sql: ${TABLE}.TerritoryKey ;;
  }

  dimension: order_line_item {
    type: number
    sql: ${TABLE}.OrderLineItem ;;
  }

  dimension: order_quantity {
    type: number
    sql: ${TABLE}.OrderQuantity ;;
  }

  measure: Order_count {
    type: count_distinct
    sql: ${TABLE}.OrderQuantity ;;
  }
  dimension: Order_count_d {
    type: number
    sql: ${TABLE}.ordercount ;;
  }
  measure: Order_count_m {
    type: sum
    sql: ${TABLE}.ordercount ;;
  }

  set: detail {
    fields: [
      order_date,
      stock_date,
      order_number,
      product_key,
      customer_key,
      territory_key,
      order_line_item,
      order_quantity
    ]
  }
}
