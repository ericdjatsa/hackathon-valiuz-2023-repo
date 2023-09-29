# The name of this view in Looker is "Square Cst Segment"
view: square_cst_segment {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.SQUARE_CST_SEGMENT` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ds Cst Segment" in Explore.

  dimension: ds_cst_segment {
    type: string
    sql: ${TABLE}.DS_CST_SEGMENT ;;
  }

  dimension: id_inspire {
    type: string
    sql: ${TABLE}.ID_INSPIRE ;;
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

  dimension: opendata_square_cst_segment_uid {
    type: string
    sql: ${TABLE}.OPENDATA_SQUARE_CST_SEGMENT_UID ;;
  }

  dimension: sid_cst_segment {
    type: number
    sql: ${TABLE}.SID_CST_SEGMENT ;;
  }
  measure: count {
    type: count
  }
}
