# The name of this view in Looker is "Last Names"
view: last_names {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.LAST_NAMES` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Count" in Explore.

  dimension: count {
    type: number
    sql: ${TABLE}.COUNT ;;
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

  dimension: last_names_uid {
    type: string
    sql: ${TABLE}.LAST_NAMES_UID ;;
  }

  dimension: nom {
    type: string
    sql: ${TABLE}.NOM ;;
  }

  dimension: nom_lower {
    type: string
    sql: ${TABLE}.NOM_LOWER ;;
  }

  dimension: nom_phonex {
    type: string
    sql: ${TABLE}.NOM_PHONEX ;;
  }

  dimension: nom_soundex2 {
    type: string
    sql: ${TABLE}.NOM_SOUNDEX2 ;;
  }

  dimension: nom_soundex_en {
    type: string
    sql: ${TABLE}.NOM_SOUNDEX_EN ;;
  }

  dimension: nom_soundex_fr {
    type: string
    sql: ${TABLE}.NOM_SOUNDEX_FR ;;
  }

  dimension: nom_token {
    type: string
    sql: ${TABLE}.NOM_TOKEN ;;
  }

  measure: num_records {
    type: count
  }
}
