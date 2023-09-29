# The name of this view in Looker is "Base Carbone"
view: base_carbone_clean {
  # Sample record: https://public.opendatasoft.com/explore/dataset/base-carbone/api/

  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `opendata_base_carbone.base_carbone_clean` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Autres Contributeurs" in Explore.


  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_de_creation {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date_de_creation ;;
  }

  dimension_group: date_de_modification {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date_de_modification ;;
  }

  dimension: identifiant_de_l_element {
    primary_key: yes
    type: number
    sql: ${TABLE}.Identifiant_de_l_element ;;
  }

  dimension: type_ligne {
    type: string
    sql: ${TABLE}.Type_Ligne ;;
  }

  dimension: type_de_l_element {
    type: string
    sql: ${TABLE}.Type_de_l_element ;;
  }

  dimension: autres_contributeurs {
    type: string
    sql: ${TABLE}.Autres_Contributeurs ;;
  }

  dimension: code_de_la_categorie {
    type: string
    sql: ${TABLE}.Code_de_la_categorie ;;
  }

  dimension: code_gaz_supplementaire_1 {
    type: string
    sql: ${TABLE}.Code_gaz_supplementaire_1 ;;
  }

  dimension: code_gaz_supplementaire_2 {
    type: string
    sql: ${TABLE}.Code_gaz_supplementaire_2 ;;
  }

  dimension: code_gaz_supplementaire_5 {
    type: string
    sql: ${TABLE}.Code_gaz_supplementaire_5 ;;
  }

  dimension: commentaire_anglais {
    type: string
    sql: ${TABLE}.Commentaire_anglais ;;
  }

  dimension: commentaire_francais {
    type: string
    sql: ${TABLE}.Commentaire_francais ;;
  }

  dimension: contributeur {
    type: string
    sql: ${TABLE}.Contributeur ;;
  }

  dimension: incertitude {
    type: number
    sql: ${TABLE}.Incertitude ;;
  }

  dimension: localisation_geographique {
    type: string
    sql: ${TABLE}.Localisation_geographique ;;
  }

  dimension: nom_attribut_anglais {
    type: string
    sql: ${TABLE}.Nom_attribut_anglais ;;
  }

  dimension: nom_attribut_espagnol {
    type: string
    sql: ${TABLE}.Nom_attribut_espagnol ;;
  }

  dimension: nom_attribut_francais {
    type: string
    sql: ${TABLE}.Nom_attribut_francais ;;
  }

  dimension: nom_base_anglais {
    type: string
    sql: ${TABLE}.Nom_base_anglais ;;
  }

  dimension: nom_base_espagnol {
    type: string
    sql: ${TABLE}.Nom_base_espagnol ;;
  }

  dimension: nom_base_francais {
    type: string
    sql: ${TABLE}.Nom_base_francais ;;
  }

  dimension: nom_frontiere_anglais {
    type: string
    sql: ${TABLE}.Nom_frontiere_anglais ;;
  }

  dimension: nom_frontiere_francais {
    type: string
    sql: ${TABLE}.Nom_frontiere_francais ;;
  }

  dimension: nom_poste_anglais {
    type: string
    sql: ${TABLE}.Nom_poste_anglais ;;
  }

  dimension: nom_poste_espagnol {
    type: string
    sql: ${TABLE}.Nom_poste_espagnol ;;
  }

  dimension: nom_poste_francais {
    type: string
    sql: ${TABLE}.Nom_poste_francais ;;
  }

  dimension: periode_de_validite {
    type: string
    sql: ${TABLE}.Periode_de_validite ;;
  }

  dimension: programme {
    type: string
    sql: ${TABLE}.Programme ;;
  }

  dimension: qualite {
    type: number
    sql: ${TABLE}.Qualite ;;
  }

  dimension: qualite_c {
    type: number
    sql: ${TABLE}.Qualite_C ;;
  }

  dimension: qualite_gr {
    type: number
    sql: ${TABLE}.Qualite_GR ;;
  }

  dimension: qualite_m {
    type: number
    sql: ${TABLE}.Qualite_M ;;
  }

  dimension: qualite_p {
    type: number
    sql: ${TABLE}.Qualite_P ;;
  }

  dimension: qualite_te_r {
    type: number
    sql: ${TABLE}.Qualite_TeR ;;
  }

  dimension: qualite_ti_r {
    type: number
    sql: ${TABLE}.Qualite_TiR ;;
  }

  dimension: reglementations {
    type: string
    sql: ${TABLE}.Reglementations ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  dimension: sous_localisation_geographique_anglais {
    type: string
    sql: ${TABLE}.Sous_localisation_geographique_anglais ;;
  }

  dimension: sous_localisation_geographique_espagnol {
    type: string
    sql: ${TABLE}.Sous_localisation_geographique_espagnol ;;
  }

  dimension: sous_localisation_geographique_francais {
    type: string
    sql: ${TABLE}.Sous_localisation_geographique_francais ;;
  }

  dimension: statut_de_l_element {
    type: string
    sql: ${TABLE}.Statut_de_l_element ;;
  }

  dimension: structure {
    type: string
    sql: ${TABLE}.Structure ;;
  }

  dimension: tags_anglais {
    type: string
    sql: ${TABLE}.Tags_anglais ;;
  }

  dimension: tags_espagnol {
    type: string
    sql: ${TABLE}.Tags_espagnol ;;
  }

  dimension: tags_francais {
    type: string
    sql: ${TABLE}.Tags_francais ;;
  }

  dimension: transparence {
    type: number
    sql: ${TABLE}.Transparence ;;
  }

  dimension: type_poste {
    type: string
    sql: ${TABLE}.Type_poste ;;
  }

  dimension: unite_anglais {
    type: string
    sql: ${TABLE}.Unite_anglais ;;
  }

  dimension: unite_francais {
    type: string
    sql: ${TABLE}.Unite_francais ;;
  }

  dimension: url_du_programme {
    type: string
    sql: ${TABLE}.Url_du_programme ;;
  }

  ### MEASURES ###

  measure: total_poste_non_decompose {
    type: sum
    sql: ${TABLE}.Total_poste_non_decompose ;;
  }


  measure: ch4b {
    label: "CH4b"
    type: sum
    sql: ${TABLE}.CH4b ;;
  }

  measure: ch4f {
    label: " CH4f"
    type: sum
    sql: ${TABLE}.CH4f ;;
  }

  measure: co2b {
    label: "CO2b"
    type: sum
    sql: ${TABLE}.CO2b ;;
  }

  measure: co2f {
    label: "Co2f"
    type: sum
    sql: ${TABLE}.CO2f ;;
  }

  measure: n2_o {
    label: "N2O"
    type: sum
    sql: ${TABLE}.N2O ;;
  }

  measure: autres_ges {
    type: sum
    sql: ${TABLE}.Autres_GES ;;
  }

  measure: valeur_gaz_supplementaire_1 {
    type: sum
    sql: ${TABLE}.Valeur_gaz_supplementaire_1 ;;
  }

  measure: valeur_gaz_supplementaire_2 {
    type: sum
    sql: ${TABLE}.Valeur_gaz_supplementaire_2 ;;
  }

  measure: valeur_gaz_supplementaire_3 {
    type: sum
    sql: ${TABLE}.Valeur_gaz_supplementaire_3 ;;
  }

  measure: valeur_gaz_supplementaire_4 {
    type: sum
    sql: ${TABLE}.Valeur_gaz_supplementaire_4 ;;
  }

  measure: valeur_gaz_supplementaire_5 {
    type: sum
    sql: ${TABLE}.Valeur_gaz_supplementaire_5 ;;
  }

  measure: count {
    type: count
  }
}
