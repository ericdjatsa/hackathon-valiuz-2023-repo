# The name of this view in Looker is "B2 B Nomenclature Naf"
view: b2_b_nomenclature_naf {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.B2B_NOMENCLATURE_NAF` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Niv1" in Explore.

  dimension: niv1 {
    type: string
    sql: ${TABLE}.NIV1 ;;
  }

  dimension: niv2 {
    type: string
    sql: ${TABLE}.NIV2 ;;
  }

  dimension: niv3 {
    type: string
    sql: ${TABLE}.NIV3 ;;
  }

  dimension: niv4 {
    type: string
    sql: ${TABLE}.NIV4 ;;
  }

  dimension: niv5 {
    type: string
    sql: ${TABLE}.NIV5 ;;
  }
  measure: count {
    type: count
  }
}
