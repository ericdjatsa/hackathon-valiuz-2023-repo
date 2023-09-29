# The name of this view in Looker is "Insee Rectangle 2016"
view: insee_rectangle_2016 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.INSEE_RECTANGLE_2016` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "I 1 Ind" in Explore.

  dimension: i_1_ind {
    type: string
    sql: ${TABLE}.I_1IND ;;
  }

  dimension: i_age7 {
    type: string
    sql: ${TABLE}.I_AGE7 ;;
  }

  dimension: i_age8 {
    type: string
    sql: ${TABLE}.I_AGE8 ;;
  }

  dimension: i_basr {
    type: string
    sql: ${TABLE}.I_BASR ;;
  }

  dimension: i_prop {
    type: string
    sql: ${TABLE}.I_PROP ;;
  }

  dimension: idk {
    type: string
    sql: ${TABLE}.IDK ;;
  }

  dimension: ind_age1 {
    type: number
    sql: ${TABLE}.IND_AGE1 ;;
  }

  dimension: ind_age2 {
    type: number
    sql: ${TABLE}.IND_AGE2 ;;
  }

  dimension: ind_age3 {
    type: number
    sql: ${TABLE}.IND_AGE3 ;;
  }

  dimension: ind_age4 {
    type: number
    sql: ${TABLE}.IND_AGE4 ;;
  }

  dimension: ind_age5 {
    type: number
    sql: ${TABLE}.IND_AGE5 ;;
  }

  dimension: ind_age6 {
    type: number
    sql: ${TABLE}.IND_AGE6 ;;
  }

  dimension: ind_age7 {
    type: number
    sql: ${TABLE}.IND_AGE7 ;;
  }

  dimension: ind_age8 {
    type: number
    sql: ${TABLE}.IND_AGE8 ;;
  }

  dimension: ind_r {
    type: number
    sql: ${TABLE}.IND_R ;;
  }

  dimension: ind_srf {
    type: number
    sql: ${TABLE}.IND_SRF ;;
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

  dimension: men_basr {
    type: number
    sql: ${TABLE}.MEN_BASR ;;
  }

  dimension: men_coll {
    type: number
    sql: ${TABLE}.MEN_COLL ;;
  }

  dimension: men_occ5 {
    type: number
    sql: ${TABLE}.MEN_OCC5 ;;
  }

  dimension: men_prop {
    type: number
    sql: ${TABLE}.MEN_PROP ;;
  }

  dimension: men_surf {
    type: number
    sql: ${TABLE}.MEN_SURF ;;
  }

  dimension: nbcar {
    type: number
    sql: ${TABLE}.NBCAR ;;
  }

  dimension: opendata_insee_rectangle_2016_uid {
    type: string
    sql: ${TABLE}.OPENDATA_INSEE_RECTANGLE_2016_UID ;;
  }
  measure: count {
    type: count
  }
}
