# The name of this view in Looker is "Siren Establishment History"
view: siren_establishment_history {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.SIREN_ESTABLISHMENT_HISTORY` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Activiteprincipaleetablissement" in Explore.

  dimension: activiteprincipaleetablissement {
    type: string
    sql: ${TABLE}.ACTIVITEPRINCIPALEETABLISSEMENT ;;
  }

  dimension: caractereemployeuretablissement {
    type: string
    sql: ${TABLE}.CARACTEREEMPLOYEURETABLISSEMENT ;;
  }

  dimension: changementactiviteprincipaleetablissement {
    type: string
    sql: ${TABLE}.CHANGEMENTACTIVITEPRINCIPALEETABLISSEMENT ;;
  }

  dimension: changementcaractereemployeuretablissement {
    type: string
    sql: ${TABLE}.CHANGEMENTCARACTEREEMPLOYEURETABLISSEMENT ;;
  }

  dimension: changementdenominationusuelleetablissement {
    type: string
    sql: ${TABLE}.CHANGEMENTDENOMINATIONUSUELLEETABLISSEMENT ;;
  }

  dimension: changementenseigneetablissement {
    type: string
    sql: ${TABLE}.CHANGEMENTENSEIGNEETABLISSEMENT ;;
  }

  dimension: changementetatadministratifetablissement {
    type: string
    sql: ${TABLE}.CHANGEMENTETATADMINISTRATIFETABLISSEMENT ;;
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

  dimension: denominationusuelleetablissement {
    type: string
    sql: ${TABLE}.DENOMINATIONUSUELLEETABLISSEMENT ;;
  }

  dimension: enseigne1_etablissement {
    type: string
    sql: ${TABLE}.ENSEIGNE1ETABLISSEMENT ;;
  }

  dimension: enseigne2_etablissement {
    type: string
    sql: ${TABLE}.ENSEIGNE2ETABLISSEMENT ;;
  }

  dimension: enseigne3_etablissement {
    type: string
    sql: ${TABLE}.ENSEIGNE3ETABLISSEMENT ;;
  }

  dimension: etatadministratifetablissement {
    type: string
    sql: ${TABLE}.ETATADMINISTRATIFETABLISSEMENT ;;
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

  dimension: nic {
    type: string
    sql: ${TABLE}.NIC ;;
  }

  dimension: nomenclatureactiviteprincipaleetablissement {
    type: string
    sql: ${TABLE}.NOMENCLATUREACTIVITEPRINCIPALEETABLISSEMENT ;;
  }

  dimension: opendata_siren_establishment_history_uid {
    type: string
    sql: ${TABLE}.OPENDATA_SIREN_ESTABLISHMENT_HISTORY_UID ;;
  }

  dimension: siren {
    type: string
    sql: ${TABLE}.SIREN ;;
  }

  dimension: siret {
    type: string
    sql: ${TABLE}.SIRET ;;
  }
  measure: count {
    type: count
  }
}
