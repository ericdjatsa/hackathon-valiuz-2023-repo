# The name of this view in Looker is "Deces"
view: deces {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.DECES` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Actedeces" in Explore.

  dimension: actedeces {
    type: string
    sql: ${TABLE}.ACTEDECES ;;
  }

  dimension: commnaiss {
    type: string
    sql: ${TABLE}.COMMNAISS ;;
  }

  dimension: datedeces {
    type: string
    sql: ${TABLE}.DATEDECES ;;
  }

  dimension: datenaiss {
    type: string
    sql: ${TABLE}.DATENAISS ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}.FIRSTNAME ;;
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

  dimension: lastname {
    type: string
    sql: ${TABLE}.LASTNAME ;;
  }

  dimension: lieudeces {
    type: string
    sql: ${TABLE}.LIEUDECES ;;
  }

  dimension: lieunaiss {
    type: string
    sql: ${TABLE}.LIEUNAISS ;;
  }

  dimension: nom {
    type: string
    sql: ${TABLE}.NOM ;;
  }

  dimension: nom_lower {
    type: string
    sql: ${TABLE}.NOM_LOWER ;;
  }

  dimension: nom_lower_nohash {
    type: string
    sql: ${TABLE}.NOM_LOWER_NOHASH ;;
  }

  dimension: nom_lower_ws {
    type: string
    sql: ${TABLE}.NOM_LOWER_WS ;;
  }

  dimension: nom_phonex {
    type: string
    sql: ${TABLE}.NOM_PHONEX ;;
  }

  dimension: nom_soundex2 {
    type: string
    sql: ${TABLE}.NOM_SOUNDEX2 ;;
  }

  dimension: nom_soundex2_nohash {
    type: string
    sql: ${TABLE}.NOM_SOUNDEX2_NOHASH ;;
  }

  dimension: nom_soundex2_ws {
    type: string
    sql: ${TABLE}.NOM_SOUNDEX2_WS ;;
  }

  dimension: nom_soundex_en {
    type: string
    sql: ${TABLE}.NOM_SOUNDEX_EN ;;
  }

  dimension: nom_soundex_en_nohash {
    type: string
    sql: ${TABLE}.NOM_SOUNDEX_EN_NOHASH ;;
  }

  dimension: nom_soundex_en_ws {
    type: string
    sql: ${TABLE}.NOM_SOUNDEX_EN_WS ;;
  }

  dimension: nom_soundex_fr {
    type: string
    sql: ${TABLE}.NOM_SOUNDEX_FR ;;
  }

  dimension: nom_soundex_fr_nohash {
    type: string
    sql: ${TABLE}.NOM_SOUNDEX_FR_NOHASH ;;
  }

  dimension: nom_soundex_fr_ws {
    type: string
    sql: ${TABLE}.NOM_SOUNDEX_FR_WS ;;
  }

  dimension: nom_token {
    type: string
    sql: ${TABLE}.NOM_TOKEN ;;
  }

  dimension: nom_token_nohash {
    type: string
    sql: ${TABLE}.NOM_TOKEN_NOHASH ;;
  }

  dimension: nom_token_ws {
    type: string
    sql: ${TABLE}.NOM_TOKEN_WS ;;
  }

  dimension: opendata_deces_uid {
    type: string
    sql: ${TABLE}.OPENDATA_DECES_UID ;;
  }

  dimension: paysnaiss {
    type: string
    sql: ${TABLE}.PAYSNAISS ;;
  }

  dimension: prenom1 {
    type: string
    sql: ${TABLE}.PRENOM1 ;;
  }

  dimension: prenom1_lower {
    type: string
    sql: ${TABLE}.PRENOM1_LOWER ;;
  }

  dimension: prenom1_lower_nohash {
    type: string
    sql: ${TABLE}.PRENOM1_LOWER_NOHASH ;;
  }

  dimension: prenom1_lower_ws {
    type: string
    sql: ${TABLE}.PRENOM1_LOWER_WS ;;
  }

  dimension: prenom1_phonex {
    type: string
    sql: ${TABLE}.PRENOM1_PHONEX ;;
  }

  dimension: prenom1_soundex2 {
    type: string
    sql: ${TABLE}.PRENOM1_SOUNDEX2 ;;
  }

  dimension: prenom1_soundex2_nohash {
    type: string
    sql: ${TABLE}.PRENOM1_SOUNDEX2_NOHASH ;;
  }

  dimension: prenom1_soundex2_ws {
    type: string
    sql: ${TABLE}.PRENOM1_SOUNDEX2_WS ;;
  }

  dimension: prenom1_soundex_en {
    type: string
    sql: ${TABLE}.PRENOM1_SOUNDEX_EN ;;
  }

  dimension: prenom1_soundex_en_nohash {
    type: string
    sql: ${TABLE}.PRENOM1_SOUNDEX_EN_NOHASH ;;
  }

  dimension: prenom1_soundex_en_ws {
    type: string
    sql: ${TABLE}.PRENOM1_SOUNDEX_EN_WS ;;
  }

  dimension: prenom1_soundex_fr {
    type: string
    sql: ${TABLE}.PRENOM1_SOUNDEX_FR ;;
  }

  dimension: prenom1_soundex_fr_nohash {
    type: string
    sql: ${TABLE}.PRENOM1_SOUNDEX_FR_NOHASH ;;
  }

  dimension: prenom1_soundex_fr_ws {
    type: string
    sql: ${TABLE}.PRENOM1_SOUNDEX_FR_WS ;;
  }

  dimension: prenom1_token {
    type: string
    sql: ${TABLE}.PRENOM1_TOKEN ;;
  }

  dimension: prenom1_token_nohash {
    type: string
    sql: ${TABLE}.PRENOM1_TOKEN_NOHASH ;;
  }

  dimension: prenom1_token_ws {
    type: string
    sql: ${TABLE}.PRENOM1_TOKEN_WS ;;
  }

  dimension: prenom2 {
    type: string
    sql: ${TABLE}.PRENOM2 ;;
  }

  dimension: prenom3 {
    type: string
    sql: ${TABLE}.PRENOM3 ;;
  }

  dimension: sexe {
    type: number
    sql: ${TABLE}.SEXE ;;
  }
  measure: count {
    type: count
    drill_fields: [firstname, lastname]
  }
}
