# The name of this view in Looker is "Quantites Marche"
view: quantites_marche {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `opendata_quantites_marche.quantites_marche` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Annee Des Donnees" in Explore.test

  dimension: annee_des_donnees {
    type: number
    sql: ${TABLE}.Annee_des_donnees ;;
  }

  dimension: code_categorie {
    type: string
    sql: ${TABLE}.Code_Categorie ;;
  }

  dimension: filiere {
    type: string
    sql: ${TABLE}.Filiere ;;
  }

  dimension: statut_d_equipement {
    type: string
    sql: ${TABLE}.Statut_d_equipement ;;
  }

  dimension: tonnage__t_ {
    type: number
    sql: ${TABLE}.Tonnage__t_ ;;
  }

  dimension: unites__milliers_d_unites_ {
    type: number
    sql: ${TABLE}.Unites__milliers_d_unites_ ;;
  }
  measure: count {
    type: count
  }
}
