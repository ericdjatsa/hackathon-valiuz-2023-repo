# The name of this view in Looker is "Agribalyse"
view: agribalyse {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `opendata_agribalyse.agribalyse` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " Ciqual Agb " in Explore.

  dimension: _ciqual__agb_ {
    type: string
    sql: ${TABLE}._Ciqual__AGB_ ;;
  }

  dimension: acidification_terrestre_et_eaux_douces {
    type: number
    sql: ${TABLE}.Acidification_terrestre_et_eaux_douces ;;
  }

  dimension: appauvrissement_de_la_couche_d_ozone {
    type: number
    sql: ${TABLE}.Appauvrissement_de_la_couche_d_ozone ;;
  }

  dimension: changement_climatique {
    type: number
    sql: ${TABLE}.Changement_climatique ;;
  }

  dimension: ciqual__code {
    type: string
    sql: ${TABLE}.Ciqual__code ;;
  }

  dimension: ecotoxicite_pour_ecosystemes_aquatiques_d_eau_douce {
    type: number
    sql: ${TABLE}.Ecotoxicite_pour_ecosystemes_aquatiques_d_eau_douce ;;
  }

  dimension: effets_toxicologiques_sur_la_sante_humaine____substances_cancerogenes {
    type: number
    sql: ${TABLE}.Effets_toxicologiques_sur_la_sante_humaine____substances_cancerogenes ;;
  }

  dimension: effets_toxicologiques_sur_la_sante_humaine____substances_non_cancerogenes {
    type: number
    sql: ${TABLE}.Effets_toxicologiques_sur_la_sante_humaine____substances_non_cancerogenes ;;
  }

  dimension: epuisement_des_ressources_eau {
    type: number
    sql: ${TABLE}.Epuisement_des_ressources_eau ;;
  }

  dimension: epuisement_des_ressources_energetiques {
    type: number
    sql: ${TABLE}.Epuisement_des_ressources_energetiques ;;
  }

  dimension: epuisement_des_ressources_mineraux {
    type: number
    sql: ${TABLE}.Epuisement_des_ressources_mineraux ;;
  }

  dimension: eutrophisation_eaux_douces {
    type: number
    sql: ${TABLE}.Eutrophisation_eaux_douces ;;
  }

  dimension: eutrophisation_marine {
    type: number
    sql: ${TABLE}.Eutrophisation_marine ;;
  }

  dimension: eutrophisation_terrestre {
    type: number
    sql: ${TABLE}.Eutrophisation_terrestre ;;
  }

  dimension: formation_photochimique_d_ozone {
    type: number
    sql: ${TABLE}.Formation_photochimique_d_ozone ;;
  }

  dimension: groupe_d_aliment {
    type: string
    sql: ${TABLE}.Groupe_d_aliment ;;
  }

  dimension: ingredients {
    type: string
    sql: ${TABLE}.Ingredients ;;
  }

  dimension: lci_name {
    type: string
    sql: ${TABLE}.LCI_Name ;;
  }

  dimension: nom_francais {
    type: string
    sql: ${TABLE}.Nom_Francais ;;
  }

  dimension: particules_fines {
    type: number
    sql: ${TABLE}.Particules_fines ;;
  }

  dimension: rayonnements_ionisants {
    type: number
    sql: ${TABLE}.Rayonnements_ionisants ;;
  }

  dimension: score_unique_ef {
    type: number
    sql: ${TABLE}.Score_unique_EF ;;
  }

  dimension: sous_groupe_d_aliment {
    type: string
    sql: ${TABLE}.Sous_groupe_d_aliment ;;
  }

  dimension: utilisation_du_sol {
    type: number
    sql: ${TABLE}.Utilisation_du_sol ;;
  }
  measure: count {
    type: count
    drill_fields: [lci_name]
  }
}
