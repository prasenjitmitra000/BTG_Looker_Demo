# The name of this view in Looker is "Adventure Works Returns"
view: adventure_works_returns {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ai-accelerators-dai.BTG_Looker_Demo.AdventureWorks_Returns`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Product Key" in Explore.

  dimension: product_key {
    type: number
    sql: ${TABLE}.ProductKey ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_product_key {
    type: sum
    sql: ${product_key} ;;
  }

  measure: average_product_key {
    type: average
    sql: ${product_key} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: return {
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
    sql: ${TABLE}.ReturnDate ;;
  }

  dimension: return_quantity {
    type: number
    sql: ${TABLE}.ReturnQuantity ;;
  }

  measure: return_m{
    type: sum
    sql: ${TABLE}.ReturnQuantity ;;
  }

  measure: return_rate {
    type:sum
    sql: (${return_quantity} / ${sales_consolidated.Order_count_d}) ;;
  }



  dimension: territory_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.TerritoryKey ;;
  }



  measure: count {
    type: count
    drill_fields: []
  }
}
