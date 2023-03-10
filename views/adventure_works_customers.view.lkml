# The name of this view in Looker is "Adventure Works Customers"
view: adventure_works_customers {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ai-accelerators-dai.BTG_Looker_Demo.AdventureWorks_Customers`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Annual Income" in Explore.

  dimension: annual_income {
    type: number
    sql: ${TABLE}.AnnualIncome ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_annual_income {
    type: sum
    sql: ${annual_income} ;;
  }

  measure: average_annual_income {
    type: average
    sql: ${annual_income} ;;
  }

# <<<<<<< HEAD

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: birth {
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
    sql: ${TABLE}.BirthDate ;;
  }

  # dimension: customer_key {
# =======
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  # dimension_group: birth {
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   convert_tz: no
  #   datatype: date
  #   sql: ${TABLE}.BirthDate ;;
  # }

  dimension: customer_key {
    primary_key: yes
# >>>>>>> branch 'master' of https://github.com/prasenjitmitra000/BTG_Looker_Demo.git
    type: number
    sql: ${TABLE}.CustomerKey ;;
  }

  dimension: education_level {
    type: string
    sql: ${TABLE}.EducationLevel ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.EmailAddress ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: home_owner {
    type: yesno
    sql: ${TABLE}.HomeOwner ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}.MaritalStatus ;;
  }

  dimension: occupation {
    type: string
    sql: ${TABLE}.Occupation ;;
  }

  dimension: prefix {
    type: string
    sql: ${TABLE}.Prefix ;;
  }

  dimension: total_children {
    type: number
    sql: ${TABLE}.TotalChildren ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }
}
