# The name of this view in Looker is "Insee Iris Geo Nesting 2019"
view: insee_iris_geo_nesting_2019 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.INSEE_IRIS_GEO_NESTING_2019` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code Iris" in Explore.

  dimension: code_iris {
    type: string
    sql: ${TABLE}.CODE_IRIS ;;
  }

  dimension: dep {
    type: string
    sql: ${TABLE}.DEP ;;
  }

  dimension: depcom {
    type: string
    sql: ${TABLE}.DEPCOM ;;
  }

  dimension: grd_quart {
    type: string
    sql: ${TABLE}.GRD_QUART ;;
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

  dimension: lib_iris {
    type: string
    sql: ${TABLE}.LIB_IRIS ;;
  }

  dimension: libcom {
    type: string
    sql: ${TABLE}.LIBCOM ;;
  }

  dimension: opendata_insee_iris_geo_area_supra_2019_uid {
    type: string
    sql: ${TABLE}.OPENDATA_INSEE_IRIS_GEO_AREA_SUPRA_2019_UID ;;
  }

  dimension: opendata_insee_iris_geo_nesting_2019_uid {
    type: string
    sql: ${TABLE}.OPENDATA_INSEE_IRIS_GEO_NESTING_2019_UID ;;
  }

  dimension: reg {
    type: string
    sql: ${TABLE}.REG ;;
  }

  dimension: typ_iris {
    type: string
    sql: ${TABLE}.TYP_IRIS ;;
  }

  dimension: uu2010 {
    type: string
    sql: ${TABLE}.UU2010 ;;
  }
  measure: count {
    type: count
  }
}
