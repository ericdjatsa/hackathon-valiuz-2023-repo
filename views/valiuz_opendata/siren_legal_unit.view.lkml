# The name of this view in Looker is "Siren Legal Unit"
view: siren_legal_unit {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.SIREN_LEGAL_UNIT` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Activiteprincipaleunitelegale" in Explore.

  dimension: activiteprincipaleunitelegale {
    type: string
    sql: ${TABLE}.ACTIVITEPRINCIPALEUNITELEGALE ;;
  }

  dimension: anneecategorieentreprise {
    type: string
    sql: ${TABLE}.ANNEECATEGORIEENTREPRISE ;;
  }

  dimension: anneeeffectifsunitelegale {
    type: string
    sql: ${TABLE}.ANNEEEFFECTIFSUNITELEGALE ;;
  }

  dimension: caractereemployeurunitelegale {
    type: string
    sql: ${TABLE}.CARACTEREEMPLOYEURUNITELEGALE ;;
  }

  dimension: categorieentreprise {
    type: string
    sql: ${TABLE}.CATEGORIEENTREPRISE ;;
  }

  dimension: categoriejuridiqueunitelegale {
    type: string
    sql: ${TABLE}.CATEGORIEJURIDIQUEUNITELEGALE ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: datecreationunitelegale {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATECREATIONUNITELEGALE ;;
  }

  dimension_group: datedebut {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATEDEBUT ;;
  }

  dimension_group: datederniertraitementunitelegale {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATEDERNIERTRAITEMENTUNITELEGALE ;;
  }

  dimension: denominationunitelegale {
    type: string
    sql: ${TABLE}.DENOMINATIONUNITELEGALE ;;
  }

  dimension: denominationusuelle1_unitelegale {
    type: string
    sql: ${TABLE}.DENOMINATIONUSUELLE1UNITELEGALE ;;
  }

  dimension: denominationusuelle2_unitelegale {
    type: string
    sql: ${TABLE}.DENOMINATIONUSUELLE2UNITELEGALE ;;
  }

  dimension: denominationusuelle3_unitelegale {
    type: string
    sql: ${TABLE}.DENOMINATIONUSUELLE3UNITELEGALE ;;
  }

  dimension: economiesocialesolidaireunitelegale {
    type: string
    sql: ${TABLE}.ECONOMIESOCIALESOLIDAIREUNITELEGALE ;;
  }

  dimension: etatadministratifunitelegale {
    type: string
    sql: ${TABLE}.ETATADMINISTRATIFUNITELEGALE ;;
  }

  dimension: identifiantassociationunitelegale {
    type: string
    sql: ${TABLE}.IDENTIFIANTASSOCIATIONUNITELEGALE ;;
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

  dimension: nicsiegeunitelegale {
    type: string
    sql: ${TABLE}.NICSIEGEUNITELEGALE ;;
  }

  dimension: nombreperiodesunitelegale {
    type: number
    sql: ${TABLE}.NOMBREPERIODESUNITELEGALE ;;
  }

  dimension: nomenclatureactiviteprincipaleunitelegale {
    type: string
    sql: ${TABLE}.NOMENCLATUREACTIVITEPRINCIPALEUNITELEGALE ;;
  }

  dimension: nomunitelegale {
    type: string
    sql: ${TABLE}.NOMUNITELEGALE ;;
  }

  dimension: nomunitelegale_lower {
    type: string
    sql: ${TABLE}.NOMUNITELEGALE_LOWER ;;
  }

  dimension: nomunitelegale_nohash {
    type: string
    sql: ${TABLE}.NOMUNITELEGALE_NOHASH ;;
  }

  dimension: nomunitelegale_phonex {
    type: string
    sql: ${TABLE}.NOMUNITELEGALE_PHONEX ;;
  }

  dimension: nomunitelegale_soundex2 {
    type: string
    sql: ${TABLE}.NOMUNITELEGALE_SOUNDEX2 ;;
  }

  dimension: nomunitelegale_soundex_en {
    type: string
    sql: ${TABLE}.NOMUNITELEGALE_SOUNDEX_EN ;;
  }

  dimension: nomunitelegale_soundex_fr {
    type: string
    sql: ${TABLE}.NOMUNITELEGALE_SOUNDEX_FR ;;
  }

  dimension: nomunitelegale_token {
    type: string
    sql: ${TABLE}.NOMUNITELEGALE_TOKEN ;;
  }

  dimension: nomunitelegale_ws {
    type: string
    sql: ${TABLE}.NOMUNITELEGALE_WS ;;
  }

  dimension: nomusageunitelegale {
    type: string
    sql: ${TABLE}.NOMUSAGEUNITELEGALE ;;
  }

  dimension: nomusageunitelegale_lower {
    type: string
    sql: ${TABLE}.NOMUSAGEUNITELEGALE_LOWER ;;
  }

  dimension: nomusageunitelegale_nohash {
    type: string
    sql: ${TABLE}.NOMUSAGEUNITELEGALE_NOHASH ;;
  }

  dimension: nomusageunitelegale_phonex {
    type: string
    sql: ${TABLE}.NOMUSAGEUNITELEGALE_PHONEX ;;
  }

  dimension: nomusageunitelegale_soundex2 {
    type: string
    sql: ${TABLE}.NOMUSAGEUNITELEGALE_SOUNDEX2 ;;
  }

  dimension: nomusageunitelegale_soundex_en {
    type: string
    sql: ${TABLE}.NOMUSAGEUNITELEGALE_SOUNDEX_EN ;;
  }

  dimension: nomusageunitelegale_soundex_fr {
    type: string
    sql: ${TABLE}.NOMUSAGEUNITELEGALE_SOUNDEX_FR ;;
  }

  dimension: nomusageunitelegale_token {
    type: string
    sql: ${TABLE}.NOMUSAGEUNITELEGALE_TOKEN ;;
  }

  dimension: nomusageunitelegale_ws {
    type: string
    sql: ${TABLE}.NOMUSAGEUNITELEGALE_WS ;;
  }

  dimension: opendata_siren_legal_unit_uid {
    type: string
    sql: ${TABLE}.OPENDATA_SIREN_LEGAL_UNIT_UID ;;
  }

  dimension: prenom1_unitelegale {
    type: string
    sql: ${TABLE}.PRENOM1UNITELEGALE ;;
  }

  dimension: prenom1_unitelegale_lower {
    type: string
    sql: ${TABLE}.PRENOM1UNITELEGALE_LOWER ;;
  }

  dimension: prenom1_unitelegale_nohash {
    type: string
    sql: ${TABLE}.PRENOM1UNITELEGALE_NOHASH ;;
  }

  dimension: prenom1_unitelegale_phonex {
    type: string
    sql: ${TABLE}.PRENOM1UNITELEGALE_PHONEX ;;
  }

  dimension: prenom1_unitelegale_soundex2 {
    type: string
    sql: ${TABLE}.PRENOM1UNITELEGALE_SOUNDEX2 ;;
  }

  dimension: prenom1_unitelegale_soundex_en {
    type: string
    sql: ${TABLE}.PRENOM1UNITELEGALE_SOUNDEX_EN ;;
  }

  dimension: prenom1_unitelegale_soundex_fr {
    type: string
    sql: ${TABLE}.PRENOM1UNITELEGALE_SOUNDEX_FR ;;
  }

  dimension: prenom1_unitelegale_token {
    type: string
    sql: ${TABLE}.PRENOM1UNITELEGALE_TOKEN ;;
  }

  dimension: prenom1_unitelegale_ws {
    type: string
    sql: ${TABLE}.PRENOM1UNITELEGALE_WS ;;
  }

  dimension: prenom2_unitelegale {
    type: string
    sql: ${TABLE}.PRENOM2UNITELEGALE ;;
  }

  dimension: prenom2_unitelegale_lower {
    type: string
    sql: ${TABLE}.PRENOM2UNITELEGALE_LOWER ;;
  }

  dimension: prenom2_unitelegale_nohash {
    type: string
    sql: ${TABLE}.PRENOM2UNITELEGALE_NOHASH ;;
  }

  dimension: prenom2_unitelegale_phonex {
    type: string
    sql: ${TABLE}.PRENOM2UNITELEGALE_PHONEX ;;
  }

  dimension: prenom2_unitelegale_soundex2 {
    type: string
    sql: ${TABLE}.PRENOM2UNITELEGALE_SOUNDEX2 ;;
  }

  dimension: prenom2_unitelegale_soundex_en {
    type: string
    sql: ${TABLE}.PRENOM2UNITELEGALE_SOUNDEX_EN ;;
  }

  dimension: prenom2_unitelegale_soundex_fr {
    type: string
    sql: ${TABLE}.PRENOM2UNITELEGALE_SOUNDEX_FR ;;
  }

  dimension: prenom2_unitelegale_token {
    type: string
    sql: ${TABLE}.PRENOM2UNITELEGALE_TOKEN ;;
  }

  dimension: prenom2_unitelegale_ws {
    type: string
    sql: ${TABLE}.PRENOM2UNITELEGALE_WS ;;
  }

  dimension: prenom3_unitelegale {
    type: string
    sql: ${TABLE}.PRENOM3UNITELEGALE ;;
  }

  dimension: prenom3_unitelegale_lower {
    type: string
    sql: ${TABLE}.PRENOM3UNITELEGALE_LOWER ;;
  }

  dimension: prenom3_unitelegale_nohash {
    type: string
    sql: ${TABLE}.PRENOM3UNITELEGALE_NOHASH ;;
  }

  dimension: prenom3_unitelegale_phonex {
    type: string
    sql: ${TABLE}.PRENOM3UNITELEGALE_PHONEX ;;
  }

  dimension: prenom3_unitelegale_soundex2 {
    type: string
    sql: ${TABLE}.PRENOM3UNITELEGALE_SOUNDEX2 ;;
  }

  dimension: prenom3_unitelegale_soundex_en {
    type: string
    sql: ${TABLE}.PRENOM3UNITELEGALE_SOUNDEX_EN ;;
  }

  dimension: prenom3_unitelegale_soundex_fr {
    type: string
    sql: ${TABLE}.PRENOM3UNITELEGALE_SOUNDEX_FR ;;
  }

  dimension: prenom3_unitelegale_token {
    type: string
    sql: ${TABLE}.PRENOM3UNITELEGALE_TOKEN ;;
  }

  dimension: prenom3_unitelegale_ws {
    type: string
    sql: ${TABLE}.PRENOM3UNITELEGALE_WS ;;
  }

  dimension: prenom4_unitelegale {
    type: string
    sql: ${TABLE}.PRENOM4UNITELEGALE ;;
  }

  dimension: prenom4_unitelegale_lower {
    type: string
    sql: ${TABLE}.PRENOM4UNITELEGALE_LOWER ;;
  }

  dimension: prenom4_unitelegale_nohash {
    type: string
    sql: ${TABLE}.PRENOM4UNITELEGALE_NOHASH ;;
  }

  dimension: prenom4_unitelegale_phonex {
    type: string
    sql: ${TABLE}.PRENOM4UNITELEGALE_PHONEX ;;
  }

  dimension: prenom4_unitelegale_soundex2 {
    type: string
    sql: ${TABLE}.PRENOM4UNITELEGALE_SOUNDEX2 ;;
  }

  dimension: prenom4_unitelegale_soundex_en {
    type: string
    sql: ${TABLE}.PRENOM4UNITELEGALE_SOUNDEX_EN ;;
  }

  dimension: prenom4_unitelegale_soundex_fr {
    type: string
    sql: ${TABLE}.PRENOM4UNITELEGALE_SOUNDEX_FR ;;
  }

  dimension: prenom4_unitelegale_token {
    type: string
    sql: ${TABLE}.PRENOM4UNITELEGALE_TOKEN ;;
  }

  dimension: prenom4_unitelegale_ws {
    type: string
    sql: ${TABLE}.PRENOM4UNITELEGALE_WS ;;
  }

  dimension: prenomusuelunitelegale {
    type: string
    sql: ${TABLE}.PRENOMUSUELUNITELEGALE ;;
  }

  dimension: prenomusuelunitelegale_lower {
    type: string
    sql: ${TABLE}.PRENOMUSUELUNITELEGALE_LOWER ;;
  }

  dimension: prenomusuelunitelegale_nohash {
    type: string
    sql: ${TABLE}.PRENOMUSUELUNITELEGALE_NOHASH ;;
  }

  dimension: prenomusuelunitelegale_phonex {
    type: string
    sql: ${TABLE}.PRENOMUSUELUNITELEGALE_PHONEX ;;
  }

  dimension: prenomusuelunitelegale_soundex2 {
    type: string
    sql: ${TABLE}.PRENOMUSUELUNITELEGALE_SOUNDEX2 ;;
  }

  dimension: prenomusuelunitelegale_soundex_en {
    type: string
    sql: ${TABLE}.PRENOMUSUELUNITELEGALE_SOUNDEX_EN ;;
  }

  dimension: prenomusuelunitelegale_soundex_fr {
    type: string
    sql: ${TABLE}.PRENOMUSUELUNITELEGALE_SOUNDEX_FR ;;
  }

  dimension: prenomusuelunitelegale_token {
    type: string
    sql: ${TABLE}.PRENOMUSUELUNITELEGALE_TOKEN ;;
  }

  dimension: prenomusuelunitelegale_ws {
    type: string
    sql: ${TABLE}.PRENOMUSUELUNITELEGALE_WS ;;
  }

  dimension: pseudonymeunitelegale {
    type: string
    sql: ${TABLE}.PSEUDONYMEUNITELEGALE ;;
  }

  dimension: pseudonymeunitelegale_lower {
    type: string
    sql: ${TABLE}.PSEUDONYMEUNITELEGALE_LOWER ;;
  }

  dimension: pseudonymeunitelegale_nohash {
    type: string
    sql: ${TABLE}.PSEUDONYMEUNITELEGALE_NOHASH ;;
  }

  dimension: pseudonymeunitelegale_phonex {
    type: string
    sql: ${TABLE}.PSEUDONYMEUNITELEGALE_PHONEX ;;
  }

  dimension: pseudonymeunitelegale_soundex2 {
    type: string
    sql: ${TABLE}.PSEUDONYMEUNITELEGALE_SOUNDEX2 ;;
  }

  dimension: pseudonymeunitelegale_soundex_en {
    type: string
    sql: ${TABLE}.PSEUDONYMEUNITELEGALE_SOUNDEX_EN ;;
  }

  dimension: pseudonymeunitelegale_soundex_fr {
    type: string
    sql: ${TABLE}.PSEUDONYMEUNITELEGALE_SOUNDEX_FR ;;
  }

  dimension: pseudonymeunitelegale_token {
    type: string
    sql: ${TABLE}.PSEUDONYMEUNITELEGALE_TOKEN ;;
  }

  dimension: pseudonymeunitelegale_ws {
    type: string
    sql: ${TABLE}.PSEUDONYMEUNITELEGALE_WS ;;
  }

  dimension: sexeunitelegale {
    type: string
    sql: ${TABLE}.SEXEUNITELEGALE ;;
  }

  dimension: sexeunitelegale_nohash {
    type: string
    sql: ${TABLE}.SEXEUNITELEGALE_NOHASH ;;
  }

  dimension: sexeunitelegale_ws {
    type: string
    sql: ${TABLE}.SEXEUNITELEGALE_WS ;;
  }

  dimension: sigleunitelegale {
    type: string
    sql: ${TABLE}.SIGLEUNITELEGALE ;;
  }

  dimension: siren {
    type: string
    sql: ${TABLE}.SIREN ;;
  }

  dimension: statutdiffusionunitelegale {
    type: string
    sql: ${TABLE}.STATUTDIFFUSIONUNITELEGALE ;;
  }

  dimension: trancheeffectifsunitelegale {
    type: string
    sql: ${TABLE}.TRANCHEEFFECTIFSUNITELEGALE ;;
  }

  dimension: unitepurgeeunitelegale {
    type: yesno
    sql: ${TABLE}.UNITEPURGEEUNITELEGALE ;;
  }
  measure: count {
    type: count
  }
}
