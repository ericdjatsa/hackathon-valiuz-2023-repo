# The name of this view in Looker is "Que Faire Dechets"
view: que_faire_dechets {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `opendata_quefairedechet.que_faire_dechets` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " ID " in Explore.

  dimension: _id_ {
    type: number
    value_format_name: id
    sql: ${TABLE}._ID_ ;;
  }

  dimension: bdd {
    type: string
    sql: ${TABLE}.Bdd ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: comment_les_eviter__ {
    type: string
    sql: ${TABLE}.Comment_les_eviter__ ;;
  }

  dimension: filieres_rep {
    type: string
    sql: ${TABLE}.filieres_REP ;;
  }

  dimension: nom {
    type: string
    sql: ${TABLE}.Nom ;;
  }

  dimension: nom_eco_organisme {
    type: string
    sql: ${TABLE}.nom_eco_organisme ;;
  }

  dimension: qu_est_ce_que_j_en_fais__ {
    type: string
    sql: ${TABLE}.Qu_est_ce_que_j_en_fais__ ;;
  }

  dimension: que_va_t_il_devenir__ {
    type: string
    sql: ${TABLE}.Que_va_t_il_devenir__ ;;
  }

  dimension: synonymes_existants {
    type: string
    sql: ${TABLE}.Synonymes_existants ;;
  }
  measure: count {
    type: count
  }
}
