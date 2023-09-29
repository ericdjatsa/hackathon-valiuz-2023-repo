# The name of this view in Looker is "Insee Population"
view: insee_population {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.INSEE_POPULATION` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codgeo" in Explore.

  dimension: codgeo {
    type: string
    sql: ${TABLE}.CODGEO ;;
  }

  dimension: dep {
    type: string
    sql: ${TABLE}.DEP ;;
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

  dimension: libgeo {
    type: string
    sql: ${TABLE}.LIBGEO ;;
  }

  dimension: opendata_insee_population_uid {
    type: string
    sql: ${TABLE}.OPENDATA_INSEE_POPULATION_UID ;;
  }

  dimension: pmun06 {
    type: number
    sql: ${TABLE}.PMUN06 ;;
  }

  dimension: pmun07 {
    type: number
    sql: ${TABLE}.PMUN07 ;;
  }

  dimension: pmun08 {
    type: number
    sql: ${TABLE}.PMUN08 ;;
  }

  dimension: pmun09 {
    type: number
    sql: ${TABLE}.PMUN09 ;;
  }

  dimension: pmun10 {
    type: number
    sql: ${TABLE}.PMUN10 ;;
  }

  dimension: pmun11 {
    type: number
    sql: ${TABLE}.PMUN11 ;;
  }

  dimension: pmun12 {
    type: number
    sql: ${TABLE}.PMUN12 ;;
  }

  dimension: pmun13 {
    type: number
    sql: ${TABLE}.PMUN13 ;;
  }

  dimension: pmun14 {
    type: number
    sql: ${TABLE}.PMUN14 ;;
  }

  dimension: pmun15 {
    type: number
    sql: ${TABLE}.PMUN15 ;;
  }

  dimension: pmun16 {
    type: number
    sql: ${TABLE}.PMUN16 ;;
  }

  dimension: pmun17 {
    type: number
    sql: ${TABLE}.PMUN17 ;;
  }

  dimension: pmun18 {
    type: number
    sql: ${TABLE}.PMUN18 ;;
  }

  dimension: psdc62 {
    type: number
    sql: ${TABLE}.PSDC62 ;;
  }

  dimension: psdc68 {
    type: number
    sql: ${TABLE}.PSDC68 ;;
  }

  dimension: psdc75 {
    type: number
    sql: ${TABLE}.PSDC75 ;;
  }

  dimension: psdc82 {
    type: number
    sql: ${TABLE}.PSDC82 ;;
  }

  dimension: psdc90 {
    type: number
    sql: ${TABLE}.PSDC90 ;;
  }

  dimension: psdc99 {
    type: number
    sql: ${TABLE}.PSDC99 ;;
  }

  dimension: ptot1876 {
    type: number
    sql: ${TABLE}.PTOT1876 ;;
  }

  dimension: ptot1881 {
    type: number
    sql: ${TABLE}.PTOT1881 ;;
  }

  dimension: ptot1886 {
    type: number
    sql: ${TABLE}.PTOT1886 ;;
  }

  dimension: ptot1891 {
    type: number
    sql: ${TABLE}.PTOT1891 ;;
  }

  dimension: ptot1896 {
    type: number
    sql: ${TABLE}.PTOT1896 ;;
  }

  dimension: ptot1901 {
    type: number
    sql: ${TABLE}.PTOT1901 ;;
  }

  dimension: ptot1906 {
    type: number
    sql: ${TABLE}.PTOT1906 ;;
  }

  dimension: ptot1911 {
    type: number
    sql: ${TABLE}.PTOT1911 ;;
  }

  dimension: ptot1921 {
    type: number
    sql: ${TABLE}.PTOT1921 ;;
  }

  dimension: ptot1926 {
    type: number
    sql: ${TABLE}.PTOT1926 ;;
  }

  dimension: ptot1931 {
    type: number
    sql: ${TABLE}.PTOT1931 ;;
  }

  dimension: ptot36 {
    type: number
    sql: ${TABLE}.PTOT36 ;;
  }

  dimension: ptot54 {
    type: number
    sql: ${TABLE}.PTOT54 ;;
  }

  dimension: reg {
    type: string
    sql: ${TABLE}.REG ;;
  }
  measure: count {
    type: count
  }
}
