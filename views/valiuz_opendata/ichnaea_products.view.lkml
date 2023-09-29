# The name of this view in Looker is "Ichnaea Products"
view: ichnaea_products {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.ICHNAEA_PRODUCTS` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Brand" in Explore.

  dimension: brand {
    type: string
    sql: ${TABLE}.BRAND ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: breadcrumblist__list {
    hidden: yes
    sql: ${TABLE}.BREADCRUMBLIST.list ;;
    group_label: "Breadcrumblist"
    group_item_label: "List"
  }

  dimension: categories__list {
    hidden: yes
    sql: ${TABLE}.CATEGORIES.list ;;
    group_label: "Categories"
    group_item_label: "List"
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: kra_creation_date_time {
    type: string
    sql: ${TABLE}.KRA_CREATION_DATE_TIME ;;
  }

  dimension: kra_creation_run_id {
    type: string
    sql: ${TABLE}.KRA_CREATION_RUN_ID ;;
  }

  dimension: kra_update_date_time {
    type: string
    sql: ${TABLE}.KRA_UPDATE_DATE_TIME ;;
  }

  dimension: kra_update_run_id {
    type: string
    sql: ${TABLE}.KRA_UPDATE_RUN_ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: originalimageurls__list {
    hidden: yes
    sql: ${TABLE}.ORIGINALIMAGEURLS.list ;;
    group_label: "Originalimageurls"
    group_item_label: "List"
  }

  dimension: price {
    type: number
    sql: ${TABLE}.PRICE ;;
  }

  dimension: pricecurrency {
    type: string
    sql: ${TABLE}.PRICECURRENCY ;;
  }

  dimension: raw_ichnaea_products_uid {
    type: string
    sql: ${TABLE}.RAW_ICHNAEA_PRODUCTS_UID ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.REFERENCE ;;
  }

  dimension: retailer {
    type: string
    sql: ${TABLE}.RETAILER ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: scrapedat {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.SCRAPEDAT ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  dimension: uploadedimagepaths__list {
    hidden: yes
    sql: ${TABLE}.UPLOADEDIMAGEPATHS.list ;;
    group_label: "Uploadedimagepaths"
    group_item_label: "List"
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}

# The name of this view in Looker is "Ichnaea Products Categories List"
view: ichnaea_products__categories__list {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Element" in Explore.

  dimension: element {
    type: string
    sql: ${TABLE}.element ;;
  }
}

# The name of this view in Looker is "Ichnaea Products Breadcrumblist List"
view: ichnaea_products__breadcrumblist__list {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Element" in Explore.

  dimension: element {
    type: string
    sql: ${TABLE}.element ;;
  }
}

# The name of this view in Looker is "Ichnaea Products Originalimageurls List"
view: ichnaea_products__originalimageurls__list {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Element" in Explore.

  dimension: element {
    type: string
    sql: ${TABLE}.element ;;
  }
}

# The name of this view in Looker is "Ichnaea Products Uploadedimagepaths List"
view: ichnaea_products__uploadedimagepaths__list {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Element" in Explore.

  dimension: element {
    type: string
    sql: ${TABLE}.element ;;
  }
}
