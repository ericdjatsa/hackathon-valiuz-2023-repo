# The name of this view in Looker is "First Names"
view: first_names {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.FIRST_NAMES` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "First Names Uid" in Explore.

  dimension: first_names_uid {
    type: string
    sql: ${TABLE}.FIRST_NAMES_UID ;;
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

  dimension: prenom {
    type: string
    sql: ${TABLE}.PRENOM ;;
  }

  dimension: prenom_lower {
    type: string
    sql: ${TABLE}.PRENOM_LOWER ;;
  }

  dimension: prenom_phonex {
    type: string
    sql: ${TABLE}.PRENOM_PHONEX ;;
  }

  dimension: prenom_soundex2 {
    type: string
    sql: ${TABLE}.PRENOM_SOUNDEX2 ;;
  }

  dimension: prenom_soundex_en {
    type: string
    sql: ${TABLE}.PRENOM_SOUNDEX_EN ;;
  }

  dimension: prenom_soundex_fr {
    type: string
    sql: ${TABLE}.PRENOM_SOUNDEX_FR ;;
  }

  dimension: prenom_token {
    type: string
    sql: ${TABLE}.PRENOM_TOKEN ;;
  }

  dimension: sum {
    type: number
    sql: ${TABLE}.SUM ;;
  }
  measure: count {
    type: count
  }
}
