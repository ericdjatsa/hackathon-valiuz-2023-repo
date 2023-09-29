# The name of this view in Looker is "B2 B Nomenclature Categorie Juridique"
view: b2_b_nomenclature_categorie_juridique {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.B2B_NOMENCLATURE_CATEGORIE_JURIDIQUE` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code1" in Explore.

  dimension: code1 {
    type: string
    sql: ${TABLE}.CODE1 ;;
  }

  dimension: code2 {
    type: string
    sql: ${TABLE}.CODE2 ;;
  }

  dimension: code3 {
    type: string
    sql: ${TABLE}.CODE3 ;;
  }

  dimension: desc1 {
    type: string
    sql: ${TABLE}.DESC1 ;;
  }

  dimension: desc2 {
    type: string
    sql: ${TABLE}.DESC2 ;;
  }

  dimension: desc3 {
    type: string
    sql: ${TABLE}.DESC3 ;;
  }
  measure: count {
    type: count
  }
}
