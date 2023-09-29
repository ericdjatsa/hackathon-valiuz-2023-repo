# The name of this view in Looker is "B2 B N1 Lib Naf"
view: b2_b_n1_lib_naf {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.B2B_N1_LIB_NAF` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: libelle {
    type: string
    sql: ${TABLE}.Libelle ;;
  }
  measure: count {
    type: count
  }
}
