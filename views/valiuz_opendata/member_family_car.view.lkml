# The name of this view in Looker is "Member Family Car"
view: member_family_car {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.MEMBER_FAMILY_CAR` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Kra Creation Date Time" in Explore.

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

  dimension: marque {
    type: string
    sql: ${TABLE}.MARQUE ;;
  }

  dimension: modele {
    type: string
    sql: ${TABLE}.MODELE ;;
  }

  dimension: opendata_member_family_car_uid {
    type: string
    sql: ${TABLE}.OPENDATA_MEMBER_FAMILY_CAR_UID ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }
  measure: count {
    type: count
  }
}
