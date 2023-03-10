# The name of this view in Looker is "Adventure Works Products"
view: adventure_works_products {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ai-accelerators-dai.BTG_Looker_Demo.AdventureWorks_Products`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Model Name" in Explore.

  dimension: model_name {
# <<<<<<< HEAD
#         type: string
#     sql: ${TABLE}.ModelName ;;
#   }

#   dimension: product_color {
#     type: string
#     sql: ${TABLE}.ProductColor ;;
#   }

#   dimension: product_cost {
#     type: number
#     sql: ${TABLE}.ProductCost ;;
#   }

#   measure: check {
#     type: sum
#     sql: ${TABLE}.ProductCost ;;
#   }

#   # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
#   # measures for this dimension, but you can also add measures of many different aggregates.
#   # Click on the type parameter to see all the options in the Quick Help panel on the right.

#   measure: total_product_cost {
#     type: sum
#     sql: ${product_cost} ;;
#   }

#   measure: average_product_cost {
#     type: average
#     sql: ${product_cost} ;;
#   }

#   dimension: product_description {
#     type: string
#     sql: ${TABLE}.ProductDescription ;;
#   }

#   dimension: product_key {
#     type: number
#     sql: ${TABLE}.ProductKey ;;
#   }

#   dimension: product_name {
#     type: string
#     sql: ${TABLE}.ProductName ;;
#   }

#   dimension: product_price {
#     type: number
#     sql: ${TABLE}.ProductPrice ;;
# =======
    type: string
    sql: ${TABLE}.ModelName ;;
  }

  dimension: product_color {
    type: string
    sql: ${TABLE}.ProductColor ;;
  }

  dimension: product_cost {
    type: number
    sql: ${TABLE}.ProductCost ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_product_cost {
    type: sum
    sql: ${product_cost} ;;
  }

  measure: average_product_cost {
    type: average
    sql: ${product_cost} ;;
  }

  dimension: product_description {
    type: string
    sql: ${TABLE}.ProductDescription ;;
  }

  dimension: product_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductKey ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.ProductName ;;
  }

  dimension: product_price {
    type: number
    sql: ${TABLE}.ProductPrice ;;
  }

#   measure: total_revenue {
#     type: sum
#     sql: ${sales_consolidated.Order_count_d} * ${product_price} ;;
#     value_format:"$#.00;($#.00)"
# # >>>>>>> branch 'master' of https://github.com/prasenjitmitra000/BTG_Looker_Demo.git
#   }

  dimension: product_size {
    type: string
    sql: ${TABLE}.ProductSize ;;
  }

  dimension: product_sku {
    type: string
    sql: ${TABLE}.ProductSKU ;;
  }

  dimension: product_style {
    type: string
    sql: ${TABLE}.ProductStyle ;;
  }

  dimension: product_subcategory_key {
    type: number
    sql: ${TABLE}.ProductSubcategoryKey ;;
  }

  measure: count {
    type: count
    drill_fields: [model_name, product_name]
  }
}
