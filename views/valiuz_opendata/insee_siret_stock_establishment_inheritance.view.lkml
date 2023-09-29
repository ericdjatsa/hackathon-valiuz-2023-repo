# The name of this view in Looker is "Insee Siret Stock Establishment Inheritance"
view: insee_siret_stock_establishment_inheritance {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.INSEE_SIRET_STOCK_ESTABLISHMENT_INHERITANCE` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Continuiteeconomique" in Explore.

  dimension: continuiteeconomique {
    type: string
    sql: ${TABLE}.CONTINUITEECONOMIQUE ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: datederniertraitementliensuccession {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATEDERNIERTRAITEMENTLIENSUCCESSION ;;
  }

  dimension_group: dateliensuccession {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATELIENSUCCESSION ;;
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

  dimension: opendata_insee_siret_stock_establishment_inheritance_uid {
    type: string
    sql: ${TABLE}.OPENDATA_INSEE_SIRET_STOCK_ESTABLISHMENT_INHERITANCE_UID ;;
  }

  dimension: siretetablissementpredecesseur {
    type: string
    sql: ${TABLE}.SIRETETABLISSEMENTPREDECESSEUR ;;
  }

  dimension: siretetablissementsuccesseur {
    type: string
    sql: ${TABLE}.SIRETETABLISSEMENTSUCCESSEUR ;;
  }

  dimension: transfertsiege {
    type: string
    sql: ${TABLE}.TRANSFERTSIEGE ;;
  }
  measure: count {
    type: count
  }
}
