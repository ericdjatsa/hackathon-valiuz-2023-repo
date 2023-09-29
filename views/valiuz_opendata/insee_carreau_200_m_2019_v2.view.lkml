# The name of this view in Looker is "Insee Carreau 200 M 2019 V2"
view: insee_carreau_200_m_2019_v2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.INSEE_CARREAU_200M_2019_V2` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Annee" in Explore.

  dimension: annee {
    type: string
    sql: ${TABLE}.ANNEE ;;
  }

  dimension: code_officiel_commune {
    type: string
    sql: ${TABLE}.CODE_OFFICIEL_COMMUNE ;;
  }

  dimension: code_officiel_commune__arrondissement_municipal {
    type: string
    sql: ${TABLE}.CODE_OFFICIEL_COMMUNE__ARRONDISSEMENT_MUNICIPAL ;;
  }

  dimension: code_officiel_departement {
    type: string
    sql: ${TABLE}.CODE_OFFICIEL_DEPARTEMENT ;;
  }

  dimension: code_officiel_epci {
    type: string
    sql: ${TABLE}.CODE_OFFICIEL_EPCI ;;
  }

  dimension: code_officiel_region {
    type: string
    sql: ${TABLE}.CODE_OFFICIEL_REGION ;;
  }

  dimension: forme_geographique {
    type: string
    sql: ${TABLE}.FORME_GEOGRAPHIQUE ;;
  }

  dimension: i_est_1_km {
    type: string
    sql: ${TABLE}.I_EST_1KM ;;
  }

  dimension: i_est_cr {
    type: string
    sql: ${TABLE}.I_EST_CR ;;
  }

  dimension: identifiant_du_carreau_2010 {
    type: string
    sql: ${TABLE}.IDENTIFIANT_DU_CARREAU_2010 ;;
  }

  dimension: identifiant_inspire {
    type: string
    sql: ${TABLE}.IDENTIFIANT_INSPIRE ;;
  }

  dimension: identifiant_inspire_du_carreau_d_1_km {
    type: string
    sql: ${TABLE}.IDENTIFIANT_INSPIRE_DU_CARREAU_D_1KM ;;
  }

  dimension: identifiant_inspire_du_carreau_de_niveau_naturel {
    type: string
    sql: ${TABLE}.IDENTIFIANT_INSPIRE_DU_CARREAU_DE_NIVEAU_NATUREL ;;
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

  dimension: nom_officiel_commune {
    type: string
    sql: ${TABLE}.NOM_OFFICIEL_COMMUNE ;;
  }

  dimension: nom_officiel_commune_arrondissement_municipal {
    type: string
    sql: ${TABLE}.NOM_OFFICIEL_COMMUNE_ARRONDISSEMENT_MUNICIPAL ;;
  }

  dimension: nom_officiel_departement {
    type: string
    sql: ${TABLE}.NOM_OFFICIEL_DEPARTEMENT ;;
  }

  dimension: nom_officiel_epci {
    type: string
    sql: ${TABLE}.NOM_OFFICIEL_EPCI ;;
  }

  dimension: nom_officiel_region {
    type: string
    sql: ${TABLE}.NOM_OFFICIEL_REGION ;;
  }

  dimension: nombre_d_individus_d_age_inconnu {
    type: string
    sql: ${TABLE}.NOMBRE_D_INDIVIDUS_D_AGE_INCONNU ;;
  }

  dimension: nombre_d_individus_de_0_a_3_ans {
    type: string
    sql: ${TABLE}.NOMBRE_D_INDIVIDUS_DE_0_A_3_ANS ;;
  }

  dimension: nombre_d_individus_de_11_a_17_ans {
    type: string
    sql: ${TABLE}.NOMBRE_D_INDIVIDUS_DE_11_A_17_ANS ;;
  }

  dimension: nombre_d_individus_de_18_a_24_ans {
    type: string
    sql: ${TABLE}.NOMBRE_D_INDIVIDUS_DE_18_A_24_ANS ;;
  }

  dimension: nombre_d_individus_de_25_a_39_ans {
    type: string
    sql: ${TABLE}.NOMBRE_D_INDIVIDUS_DE_25_A_39_ANS ;;
  }

  dimension: nombre_d_individus_de_40_a_54_ans {
    type: string
    sql: ${TABLE}.NOMBRE_D_INDIVIDUS_DE_40_A_54_ANS ;;
  }

  dimension: nombre_d_individus_de_4_a_5_ans {
    type: string
    sql: ${TABLE}.NOMBRE_D_INDIVIDUS_DE_4_A_5_ANS ;;
  }

  dimension: nombre_d_individus_de_55_a_64_ans {
    type: string
    sql: ${TABLE}.NOMBRE_D_INDIVIDUS_DE_55_A_64_ANS ;;
  }

  dimension: nombre_d_individus_de_65_a_79_ans {
    type: string
    sql: ${TABLE}.NOMBRE_D_INDIVIDUS_DE_65_A_79_ANS ;;
  }

  dimension: nombre_d_individus_de_6_a_10_ans {
    type: string
    sql: ${TABLE}.NOMBRE_D_INDIVIDUS_DE_6_A_10_ANS ;;
  }

  dimension: nombre_d_individus_de_80_ans_ou_plus {
    type: string
    sql: ${TABLE}.NOMBRE_D_INDIVIDUS_DE_80_ANS_OU_PLUS ;;
  }

  dimension: nombre_de_carreaux_de_200_m_du_carreau_traites_pour_respecter_la_confidentialite_sur_le_nombre_de_menages_pauvres {
    type: string
    sql: ${TABLE}.NOMBRE_DE_CARREAUX_DE_200M_DU_CARREAU_TRAITES_POUR_RESPECTER_LA_CONFIDENTIALITE_SUR_LE_NOMBRE_DE_MENAGES_PAUVRES ;;
  }

  dimension: nombre_de_logements_construits_avant_1945 {
    type: string
    sql: ${TABLE}.NOMBRE_DE_LOGEMENTS_CONSTRUITS_AVANT_1945 ;;
  }

  dimension: nombre_de_logements_construits_depuis_1990 {
    type: string
    sql: ${TABLE}.NOMBRE_DE_LOGEMENTS_CONSTRUITS_DEPUIS_1990 ;;
  }

  dimension: nombre_de_logements_construits_entre_1945_et_1970 {
    type: string
    sql: ${TABLE}.NOMBRE_DE_LOGEMENTS_CONSTRUITS_ENTRE_1945_ET_1970 ;;
  }

  dimension: nombre_de_logements_construits_entre_1970_et_1990 {
    type: string
    sql: ${TABLE}.NOMBRE_DE_LOGEMENTS_CONSTRUITS_ENTRE_1970_ET_1990 ;;
  }

  dimension: nombre_de_logements_dont_la_date_de_construction_est_inconnue {
    type: string
    sql: ${TABLE}.NOMBRE_DE_LOGEMENTS_DONT_LA_DATE_DE_CONSTRUCTION_EST_INCONNUE ;;
  }

  dimension: nombre_de_logements_sociaux {
    type: string
    sql: ${TABLE}.NOMBRE_DE_LOGEMENTS_SOCIAUX ;;
  }

  dimension: nombre_de_menages {
    type: string
    sql: ${TABLE}.NOMBRE_DE_MENAGES ;;
  }

  dimension: nombre_de_menages_d_un_seul_individu {
    type: string
    sql: ${TABLE}.NOMBRE_DE_MENAGES_D_UN_SEUL_INDIVIDU ;;
  }

  dimension: nombre_de_menages_de_5_individus_ou_plus {
    type: string
    sql: ${TABLE}.NOMBRE_DE_MENAGES_DE_5_INDIVIDUS_OU_PLUS ;;
  }

  dimension: nombre_de_menages_en_logements_collectifs {
    type: string
    sql: ${TABLE}.NOMBRE_DE_MENAGES_EN_LOGEMENTS_COLLECTIFS ;;
  }

  dimension: nombre_de_menages_en_maison {
    type: string
    sql: ${TABLE}.NOMBRE_DE_MENAGES_EN_MAISON ;;
  }

  dimension: nombre_de_menages_monoparentaux {
    type: string
    sql: ${TABLE}.NOMBRE_DE_MENAGES_MONOPARENTAUX ;;
  }

  dimension: nombre_de_menages_pauvres {
    type: string
    sql: ${TABLE}.NOMBRE_DE_MENAGES_PAUVRES ;;
  }

  dimension: nombre_de_menages_proprietaires {
    type: string
    sql: ${TABLE}.NOMBRE_DE_MENAGES_PROPRIETAIRES ;;
  }

  dimension: numero_de_groupe {
    type: string
    sql: ${TABLE}.NUMERO_DE_GROUPE ;;
  }

  dimension: opendata_insee_carreau_1_km_2019_uid {
    type: string
    sql: ${TABLE}.OPENDATA_INSEE_CARREAU_1KM_2019_UID ;;
  }

  dimension: opendata_insee_carreau_200_m_2019_uid {
    type: string
    sql: ${TABLE}.OPENDATA_INSEE_CARREAU_200M_2019_UID ;;
  }

  dimension: point_geogreaphique {
    type: string
    sql: ${TABLE}.POINT_GEOGREAPHIQUE ;;
  }

  dimension: population_du_carreau {
    type: string
    sql: ${TABLE}.POPULATION_DU_CARREAU ;;
  }

  dimension: somme_de_la_surface_des_logements_du_carreau {
    type: string
    sql: ${TABLE}.SOMME_DE_LA_SURFACE_DES_LOGEMENTS_DU_CARREAU ;;
  }

  dimension: somme_des_niveaux_de_vie_winsorises_des_individus {
    type: string
    sql: ${TABLE}.SOMME_DES_NIVEAUX_DE_VIE_WINSORISES_DES_INDIVIDUS ;;
  }
  measure: count {
    type: count
  }
}
