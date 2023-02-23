# Define the database connection to be used for this model.
connection: "looker_one_demo"

# include all the views
include: "/views/**/*.view"

# include: "/dashboard/**/*.dashboard"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: btg_looker_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: btg_looker_demo_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Btg Looker Demo"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: test {}


explore: adventure_works_sales_2015{
  join: adventure_works_products {
    type: inner
    sql_on: ${adventure_works_sales_2015.product_key}=${adventure_works_products.product_key};;
    relationship: one_to_one
  }
  join: adventure_works_customers{
    type: inner
    sql_on: ${adventure_works_sales_2015.customer_key}=${adventure_works_customers.customer_key} ;;
    relationship: one_to_one
  }
}



explore: adventure_works_products {
  join: adventure_works_returns {
    type: inner
    sql_on: ${adventure_works_returns.product_key}=${adventure_works_products.product_key};;
    relationship: one_to_one
  }
}


explore: adventure_works_product_subcategories {
  join: adventure_works_products {
    type: inner
    sql_on: ${adventure_works_products.product_subcategory_key}=${adventure_works_product_subcategories.product_category_key};;
    relationship: one_to_one
  }
# explore: adventure_works_customers {
#   join: sales_consolidated {
#     type: left_outer
#     sql_on: ${adventure_works_customers.customer_key} =  ${sales_consolidated.customer_key};;
#     relationship: one_to_many
#   }

#   join: adventure_works_products {
#     type: left_outer
#     relationship: one_to_many
#     sql_on: ${adventure_works_products.product_key} = ${sales_consolidated.product_key} ;;
#   }

#       join: adventure_works_product_subcategories {
#     type: left_outer
#     relationship: many_to_one
#     sql_on:${adventure_works_products.product_subcategory_key} = ${adventure_works_product_subcategories.product_subcategory_key}
#     ;;
#   }
#   join: adventure_works_product_categories {
#     type: left_outer
#     relationship: one_to_many
#     sql_on: ${adventure_works_product_subcategories.product_category_key} = ${adventure_works_product_categories.product_category_key} ;;
#   }

#   join: adventure_works_returns {
#     type: left_outer
#     relationship: one_to_many
#     sql_on: ${adventure_works_returns.product_key} = ${sales_consolidated.product_key} ;;
#   }

}
