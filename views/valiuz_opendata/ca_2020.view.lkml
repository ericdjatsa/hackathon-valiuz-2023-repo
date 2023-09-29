# The name of this view in Looker is "Ca 2020"
view: ca_2020 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.CA_2020` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Adresse" in Explore.

  dimension: adresse {
    type: string
    sql: ${TABLE}.ADRESSE ;;
  }

  dimension: ca_1 {
    type: number
    sql: ${TABLE}.CA_1 ;;
  }

  dimension: ca_2 {
    type: number
    sql: ${TABLE}.CA_2 ;;
  }

  dimension: ca_3 {
    type: number
    sql: ${TABLE}.CA_3 ;;
  }

  dimension: code_ape {
    type: string
    sql: ${TABLE}.CODE_APE ;;
  }

  dimension: code_greffe {
    type: number
    sql: ${TABLE}.CODE_GREFFE ;;
  }

  dimension: code_postal {
    type: number
    sql: ${TABLE}.CODE_POSTAL ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_de_cloture_exercice_1 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATE_DE_CLOTURE_EXERCICE_1 ;;
  }

  dimension_group: date_de_cloture_exercice_2 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATE_DE_CLOTURE_EXERCICE_2 ;;
  }

  dimension_group: date_de_cloture_exercice_3 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATE_DE_CLOTURE_EXERCICE_3 ;;
  }

  dimension_group: date_de_publication {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATE_DE_PUBLICATION ;;
  }

  dimension_group: date_immatriculation {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATE_IMMATRICULATION ;;
  }

  dimension: date_radiation {
    type: string
    sql: ${TABLE}.DATE_RADIATION ;;
  }

  dimension: denomination {
    type: string
    sql: ${TABLE}.DENOMINATION ;;
  }

  dimension: departement {
    type: string
    sql: ${TABLE}.DEPARTEMENT ;;
  }

  dimension: duree_1 {
    type: number
    sql: ${TABLE}.DUREE_1 ;;
  }

  dimension: duree_2 {
    type: number
    sql: ${TABLE}.DUREE_2 ;;
  }

  dimension: duree_3 {
    type: number
    sql: ${TABLE}.DUREE_3 ;;
  }

  dimension: effectif_1 {
    type: number
    sql: ${TABLE}.EFFECTIF_1 ;;
  }

  dimension: effectif_2 {
    type: number
    sql: ${TABLE}.EFFECTIF_2 ;;
  }

  dimension: effectif_3 {
    type: number
    sql: ${TABLE}.EFFECTIF_3 ;;
  }

  dimension: fiche_identite {
    type: string
    sql: ${TABLE}.FICHE_IDENTITE ;;
  }

  dimension: forme_juridique {
    type: string
    sql: ${TABLE}.FORME_JURIDIQUE ;;
  }

  dimension: geolocalisation {
    type: string
    sql: ${TABLE}.GEOLOCALISATION ;;
  }

  dimension: greffe {
    type: string
    sql: ${TABLE}.GREFFE ;;
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

  dimension: libelle_ape {
    type: string
    sql: ${TABLE}.LIBELLE_APE ;;
  }

  dimension: millesime_1 {
    type: string
    sql: ${TABLE}.MILLESIME_1 ;;
  }

  dimension: millesime_2 {
    type: string
    sql: ${TABLE}.MILLESIME_2 ;;
  }

  dimension: millesime_3 {
    type: string
    sql: ${TABLE}.MILLESIME_3 ;;
  }

  dimension: nic {
    type: string
    sql: ${TABLE}.NIC ;;
  }

  dimension: num_dept {
    type: number
    sql: ${TABLE}.NUM_DEPT ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  dimension: resultat_1 {
    type: number
    sql: ${TABLE}.RESULTAT_1 ;;
  }

  dimension: resultat_2 {
    type: number
    sql: ${TABLE}.RESULTAT_2 ;;
  }

  dimension: resultat_3 {
    type: number
    sql: ${TABLE}.RESULTAT_3 ;;
  }

  dimension: siren {
    type: string
    sql: ${TABLE}.SIREN ;;
  }

  dimension: statut {
    type: string
    sql: ${TABLE}.STATUT ;;
  }

  dimension: tranche_ca_millesime_1 {
    type: string
    sql: ${TABLE}.TRANCHE_CA_MILLESIME_1 ;;
  }

  dimension: tranche_ca_millesime_2 {
    type: string
    sql: ${TABLE}.TRANCHE_CA_MILLESIME_2 ;;
  }

  dimension: tranche_ca_millesime_3 {
    type: string
    sql: ${TABLE}.TRANCHE_CA_MILLESIME_3 ;;
  }

  dimension: ville {
    type: string
    sql: ${TABLE}.VILLE ;;
  }
  measure: count {
    type: count
  }
}
