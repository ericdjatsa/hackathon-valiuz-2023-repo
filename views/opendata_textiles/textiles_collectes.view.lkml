# The name of this view in Looker is "Textiles Collectes"
view: textiles_collectes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `opendata_textiles.textiles_collectes` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Annee Des Donnees" in Explore.

  dimension: annee_des_donnees {
    type: number
    sql: ${TABLE}.Annee_des_donnees ;;
  }

  dimension: code_dept {
    type: string
    sql: ${TABLE}.Code_Dept ;;
  }

  dimension: nbpc {
    type: number
    sql: ${TABLE}.nbpc ;;
  }

  dimension: origine {
    type: string
    sql: ${TABLE}.origine ;;
  }

  dimension: tonnage {
    type: number
    sql: ${TABLE}.tonnage ;;
  }
  measure: count {
    type: count
  }
}
