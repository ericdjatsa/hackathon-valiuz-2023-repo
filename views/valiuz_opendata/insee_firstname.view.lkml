# The name of this view in Looker is "Insee Firstname"
view: insee_firstname {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.INSEE_FIRSTNAME` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Annais" in Explore.

  dimension: annais {
    type: string
    sql: ${TABLE}.ANNAIS ;;
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

  dimension: nombre {
    type: number
    sql: ${TABLE}.NOMBRE ;;
  }

  dimension: opendata_insee_firstname_uid {
    type: string
    sql: ${TABLE}.OPENDATA_INSEE_FIRSTNAME_UID ;;
  }

  dimension: preusuel {
    type: string
    sql: ${TABLE}.PREUSUEL ;;
  }

  dimension: preusuel_lower {
    type: string
    sql: ${TABLE}.PREUSUEL_LOWER ;;
  }

  dimension: preusuel_phonex {
    type: string
    sql: ${TABLE}.PREUSUEL_PHONEX ;;
  }

  dimension: preusuel_soundex2 {
    type: string
    sql: ${TABLE}.PREUSUEL_SOUNDEX2 ;;
  }

  dimension: preusuel_soundex_en {
    type: string
    sql: ${TABLE}.PREUSUEL_SOUNDEX_EN ;;
  }

  dimension: preusuel_soundex_fr {
    type: string
    sql: ${TABLE}.PREUSUEL_SOUNDEX_FR ;;
  }

  dimension: preusuel_token {
    type: string
    sql: ${TABLE}.PREUSUEL_TOKEN ;;
  }

  dimension: sexe {
    type: number
    sql: ${TABLE}.SEXE ;;
  }
  measure: count {
    type: count
  }
}
