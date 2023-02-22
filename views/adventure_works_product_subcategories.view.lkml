# The name of this view in Looker is "Adventure Works Product Subcategories"
view: adventure_works_product_subcategories {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ai-accelerators-dai.BTG_Looker_Demo.AdventureWorks_Product_Subcategories`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Product Category Key" in Explore.

  dimension: product_category_key {
    type: number
    sql: ${TABLE}.ProductCategoryKey ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_product_category_key {
    type: sum
    sql: ${product_category_key} ;;
  }

  measure: average_product_category_key {
    type: average
    sql: ${product_category_key} ;;
  }

  dimension: product_subcategory_key {
    type: number
    sql: ${TABLE}.ProductSubcategoryKey ;;
  }

  dimension: subcategory_name {
    type: string
    sql: ${TABLE}.SubcategoryName ;;
  }

  measure: count {
    type: count
    drill_fields: [subcategory_name]
  }
}
