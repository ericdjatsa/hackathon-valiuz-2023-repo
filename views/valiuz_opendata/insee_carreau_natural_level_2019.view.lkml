# The name of this view in Looker is "Insee Carreau Natural Level 2019"
view: insee_carreau_natural_level_2019 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.INSEE_CARREAU_NATURAL_LEVEL_2019` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "I Pauv" in Explore.

  dimension: i_pauv {
    type: string
    sql: ${TABLE}.I_PAUV ;;
  }

  dimension: id_carr_n {
    type: string
    sql: ${TABLE}.ID_CARR_N ;;
  }

  dimension: ind {
    type: number
    sql: ${TABLE}.IND ;;
  }

  dimension: ind_0_3 {
    type: number
    sql: ${TABLE}.IND_0_3 ;;
  }

  dimension: ind_11_17 {
    type: number
    sql: ${TABLE}.IND_11_17 ;;
  }

  dimension: ind_18_24 {
    type: number
    sql: ${TABLE}.IND_18_24 ;;
  }

  dimension: ind_25_39 {
    type: number
    sql: ${TABLE}.IND_25_39 ;;
  }

  dimension: ind_40_54 {
    type: number
    sql: ${TABLE}.IND_40_54 ;;
  }

  dimension: ind_4_5 {
    type: number
    sql: ${TABLE}.IND_4_5 ;;
  }

  dimension: ind_55_64 {
    type: number
    sql: ${TABLE}.IND_55_64 ;;
  }

  dimension: ind_65_79 {
    type: number
    sql: ${TABLE}.IND_65_79 ;;
  }

  dimension: ind_6_10 {
    type: number
    sql: ${TABLE}.IND_6_10 ;;
  }

  dimension: ind_80_p {
    type: number
    sql: ${TABLE}.IND_80P ;;
  }

  dimension: ind_inc {
    type: number
    sql: ${TABLE}.IND_INC ;;
  }

  dimension: ind_snv {
    type: number
    sql: ${TABLE}.IND_SNV ;;
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

  dimension: log_45_70 {
    type: number
    sql: ${TABLE}.LOG_45_70 ;;
  }

  dimension: log_70_90 {
    type: number
    sql: ${TABLE}.LOG_70_90 ;;
  }

  dimension: log_ap90 {
    type: number
    sql: ${TABLE}.LOG_AP90 ;;
  }

  dimension: log_av45 {
    type: number
    sql: ${TABLE}.LOG_AV45 ;;
  }

  dimension: log_inc {
    type: number
    sql: ${TABLE}.LOG_INC ;;
  }

  dimension: log_soc {
    type: number
    sql: ${TABLE}.LOG_SOC ;;
  }

  dimension: men {
    type: number
    sql: ${TABLE}.MEN ;;
  }

  dimension: men_1_ind {
    type: number
    sql: ${TABLE}.MEN_1IND ;;
  }

  dimension: men_5_ind {
    type: number
    sql: ${TABLE}.MEN_5IND ;;
  }

  dimension: men_coll {
    type: number
    sql: ${TABLE}.MEN_COLL ;;
  }

  dimension: men_fmp {
    type: number
    sql: ${TABLE}.MEN_FMP ;;
  }

  dimension: men_mais {
    type: number
    sql: ${TABLE}.MEN_MAIS ;;
  }

  dimension: men_pauv {
    type: number
    sql: ${TABLE}.MEN_PAUV ;;
  }

  dimension: men_prop {
    type: number
    sql: ${TABLE}.MEN_PROP ;;
  }

  dimension: men_surf {
    type: number
    sql: ${TABLE}.MEN_SURF ;;
  }

  dimension: opendata_insee_carreau_natural_level_2019_uid {
    type: string
    sql: ${TABLE}.OPENDATA_INSEE_CARREAU_NATURAL_LEVEL_2019_UID ;;
  }

  dimension: t_maille {
    type: number
    sql: ${TABLE}.T_MAILLE ;;
  }
  measure: count {
    type: count
  }
}
