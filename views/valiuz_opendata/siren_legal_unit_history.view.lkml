# The name of this view in Looker is "Siren Legal Unit History"
view: siren_legal_unit_history {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.SIREN_LEGAL_UNIT_HISTORY` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Activiteprincipaleunitelegale" in Explore.

  dimension: activiteprincipaleunitelegale {
    type: string
    sql: ${TABLE}.ACTIVITEPRINCIPALEUNITELEGALE ;;
  }

  dimension: caractereemployeurunitelegale {
    type: string
    sql: ${TABLE}.CARACTEREEMPLOYEURUNITELEGALE ;;
  }

  dimension: categoriejuridiqueunitelegale {
    type: string
    sql: ${TABLE}.CATEGORIEJURIDIQUEUNITELEGALE ;;
  }

  dimension: changementactiviteprincipaleunitelegale {
    type: string
    sql: ${TABLE}.CHANGEMENTACTIVITEPRINCIPALEUNITELEGALE ;;
  }

  dimension: changementcaractereemployeurunitelegale {
    type: string
    sql: ${TABLE}.CHANGEMENTCARACTEREEMPLOYEURUNITELEGALE ;;
  }

  dimension: changementcategoriejuridiqueunitelegale {
    type: string
    sql: ${TABLE}.CHANGEMENTCATEGORIEJURIDIQUEUNITELEGALE ;;
  }

  dimension: changementdenominationunitelegale {
    type: string
    sql: ${TABLE}.CHANGEMENTDENOMINATIONUNITELEGALE ;;
  }

  dimension: changementdenominationusuelleunitelegale {
    type: string
    sql: ${TABLE}.CHANGEMENTDENOMINATIONUSUELLEUNITELEGALE ;;
  }

  dimension: changementeconomiesocialesolidaireunitelegale {
    type: string
    sql: ${TABLE}.CHANGEMENTECONOMIESOCIALESOLIDAIREUNITELEGALE ;;
  }

  dimension: changementetatadministratifunitelegale {
    type: string
    sql: ${TABLE}.CHANGEMENTETATADMINISTRATIFUNITELEGALE ;;
  }

  dimension: changementnicsiegeunitelegale {
    type: string
    sql: ${TABLE}.CHANGEMENTNICSIEGEUNITELEGALE ;;
  }

  dimension: changementnomunitelegale {
    type: string
    sql: ${TABLE}.CHANGEMENTNOMUNITELEGALE ;;
  }

  dimension: changementnomusageunitelegale {
    type: string
    sql: ${TABLE}.CHANGEMENTNOMUSAGEUNITELEGALE ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: datedebut {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATEDEBUT ;;
  }

  dimension_group: datefin {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATEFIN ;;
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

  dimension: nomenclatureactiviteprincipaleunitelegale {
    type: string
    sql: ${TABLE}.NOMENCLATUREACTIVITEPRINCIPALEUNITELEGALE ;;
  }

  dimension: nomunitelegale {
    type: string
    sql: ${TABLE}.NOMUNITELEGALE ;;
  }

  dimension: nomusageunitelegale {
    type: string
    sql: ${TABLE}.NOMUSAGEUNITELEGALE ;;
  }

  dimension: opendata_siren_legal_unit_history_uid {
    type: string
    sql: ${TABLE}.OPENDATA_SIREN_LEGAL_UNIT_HISTORY_UID ;;
  }

  dimension: siren {
    type: string
    sql: ${TABLE}.SIREN ;;
  }
  measure: count {
    type: count
  }
}
