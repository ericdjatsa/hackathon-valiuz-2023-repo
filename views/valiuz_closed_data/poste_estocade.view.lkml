# The name of this view in Looker is "Poste Estocade"
view: poste_estocade {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_closed_data.POSTE_ESTOCADE` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Civilite" in Explore.

  dimension: civilite {
    type: string
    sql: ${TABLE}.CIVILITE ;;
  }

  dimension: code_postal {
    type: string
    sql: ${TABLE}.CODE_POSTAL ;;
  }

  dimension: complement_localisation {
    type: string
    sql: ${TABLE}.COMPLEMENT_LOCALISATION ;;
  }

  dimension: complement_remise {
    type: string
    sql: ${TABLE}.COMPLEMENT_REMISE ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_demenagement {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATE_DEMENAGEMENT ;;
  }

  dimension_group: date_fin_demenagement {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATE_FIN_DEMENAGEMENT ;;
  }

  dimension: hexacle {
    type: string
    sql: ${TABLE}.HEXACLE ;;
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

  dimension: lib_voie {
    type: string
    sql: ${TABLE}.LIB_VOIE ;;
  }

  dimension: libelle_acheminement {
    type: string
    sql: ${TABLE}.LIBELLE_ACHEMINEMENT ;;
  }

  dimension: mention_distribution {
    type: string
    sql: ${TABLE}.MENTION_DISTRIBUTION ;;
  }

  dimension: nom {
    type: string
    sql: ${TABLE}.NOM ;;
  }

  dimension: nom_jeunefille {
    type: string
    sql: ${TABLE}.NOM_JEUNEFILLE ;;
  }

  dimension: nom_jeunefille_lower {
    type: string
    sql: ${TABLE}.NOM_JEUNEFILLE_LOWER ;;
  }

  dimension: nom_jeunefille_phonex {
    type: string
    sql: ${TABLE}.NOM_JEUNEFILLE_PHONEX ;;
  }

  dimension: nom_jeunefille_soundex2 {
    type: string
    sql: ${TABLE}.NOM_JEUNEFILLE_SOUNDEX2 ;;
  }

  dimension: nom_jeunefille_soundex_en {
    type: string
    sql: ${TABLE}.NOM_JEUNEFILLE_SOUNDEX_EN ;;
  }

  dimension: nom_jeunefille_soundex_fr {
    type: string
    sql: ${TABLE}.NOM_JEUNEFILLE_SOUNDEX_FR ;;
  }

  dimension: nom_jeunefille_token {
    type: string
    sql: ${TABLE}.NOM_JEUNEFILLE_TOKEN ;;
  }

  dimension: nom_lower {
    type: string
    sql: ${TABLE}.NOM_LOWER ;;
  }

  dimension: nom_phonex {
    type: string
    sql: ${TABLE}.NOM_PHONEX ;;
  }

  dimension: nom_soundex2 {
    type: string
    sql: ${TABLE}.NOM_SOUNDEX2 ;;
  }

  dimension: nom_soundex_en {
    type: string
    sql: ${TABLE}.NOM_SOUNDEX_EN ;;
  }

  dimension: nom_soundex_fr {
    type: string
    sql: ${TABLE}.NOM_SOUNDEX_FR ;;
  }

  dimension: nom_token {
    type: string
    sql: ${TABLE}.NOM_TOKEN ;;
  }

  dimension: num_contrat {
    type: string
    sql: ${TABLE}.NUM_CONTRAT ;;
  }

  dimension: num_voie {
    type: string
    sql: ${TABLE}.NUM_VOIE ;;
  }

  dimension: prenom {
    type: string
    sql: ${TABLE}.PRENOM ;;
  }

  dimension: prenom_lower {
    type: string
    sql: ${TABLE}.PRENOM_LOWER ;;
  }

  dimension: prenom_phonex {
    type: string
    sql: ${TABLE}.PRENOM_PHONEX ;;
  }

  dimension: prenom_soundex2 {
    type: string
    sql: ${TABLE}.PRENOM_SOUNDEX2 ;;
  }

  dimension: prenom_soundex_en {
    type: string
    sql: ${TABLE}.PRENOM_SOUNDEX_EN ;;
  }

  dimension: prenom_soundex_fr {
    type: string
    sql: ${TABLE}.PRENOM_SOUNDEX_FR ;;
  }

  dimension: prenom_token {
    type: string
    sql: ${TABLE}.PRENOM_TOKEN ;;
  }

  dimension: rang_individu {
    type: string
    sql: ${TABLE}.RANG_INDIVIDU ;;
  }

  dimension: raw_closed_data_poste_estocade_uid {
    type: string
    sql: ${TABLE}.RAW_CLOSED_DATA_POSTE_ESTOCADE_UID ;;
  }

  dimension: reserved1 {
    type: string
    sql: ${TABLE}.RESERVED1 ;;
  }

  dimension: reserved2 {
    type: string
    sql: ${TABLE}.RESERVED2 ;;
  }

  dimension: reserved3 {
    type: string
    sql: ${TABLE}.RESERVED3 ;;
  }

  dimension: rnvp_adrs {
    type: string
    sql: ${TABLE}.RNVP_ADRS ;;
  }

  dimension: rnvp_armee {
    type: string
    sql: ${TABLE}.RNVP_ARMEE ;;
  }

  dimension: rnvp_cadrs {
    type: string
    sql: ${TABLE}.RNVP_CADRS ;;
  }

  dimension: rnvp_carreaucodecarreau {
    type: string
    sql: ${TABLE}.RNVP_CARREAUCODECARREAU ;;
  }

  dimension: rnvp_carreaucoderectangle {
    type: string
    sql: ${TABLE}.RNVP_CARREAUCODERECTANGLE ;;
  }

  dimension: rnvp_carreaucq {
    type: string
    sql: ${TABLE}.RNVP_CARREAUCQ ;;
  }

  dimension: rnvp_cpville {
    type: string
    sql: ${TABLE}.RNVP_CPVILLE ;;
  }

  dimension: rnvp_cqadrs {
    type: string
    sql: ${TABLE}.RNVP_CQADRS ;;
  }

  dimension: rnvp_cql3 {
    type: string
    sql: ${TABLE}.RNVP_CQL3 ;;
  }

  dimension: rnvp_cqtnp {
    type: string
    sql: ${TABLE}.RNVP_CQTNP ;;
  }

  dimension: rnvp_cqxy {
    type: string
    sql: ${TABLE}.RNVP_CQXY ;;
  }

  dimension: rnvp_domtom {
    type: string
    sql: ${TABLE}.RNVP_DOMTOM ;;
  }

  dimension: rnvp_etranger {
    type: string
    sql: ${TABLE}.RNVP_ETRANGER ;;
  }

  dimension: rnvp_insee {
    type: string
    sql: ${TABLE}.RNVP_INSEE ;;
  }

  dimension: rnvp_inseeglobal {
    type: string
    sql: ${TABLE}.RNVP_INSEEGLOBAL ;;
  }

  dimension: rnvp_iriscodeiris {
    type: string
    sql: ${TABLE}.RNVP_IRISCODEIRIS ;;
  }

  dimension: rnvp_iriscq {
    type: string
    sql: ${TABLE}.RNVP_IRISCQ ;;
  }

  dimension: rnvp_ishabitationverticale {
    type: string
    sql: ${TABLE}.RNVP_ISHABITATIONVERTICALE ;;
  }

  dimension: rnvp_libdept {
    type: string
    sql: ${TABLE}.RNVP_LIBDEPT ;;
  }

  dimension: rnvp_libvoie {
    type: string
    sql: ${TABLE}.RNVP_LIBVOIE ;;
  }

  dimension: rnvp_lieudit {
    type: string
    sql: ${TABLE}.RNVP_LIEUDIT ;;
  }

  dimension: rnvp_numdept {
    type: string
    sql: ${TABLE}.RNVP_NUMDEPT ;;
  }

  dimension: rnvp_pays {
    type: string
    sql: ${TABLE}.RNVP_PAYS ;;
  }

  dimension: rnvp_poidsmodif {
    type: string
    sql: ${TABLE}.RNVP_POIDSMODIF ;;
  }

  dimension: rnvp_regionadministrative {
    type: string
    sql: ${TABLE}.RNVP_REGIONADMINISTRATIVE ;;
  }

  dimension: rnvp_rejet {
    type: string
    sql: ${TABLE}.RNVP_REJET ;;
  }

  dimension: rnvp_risquerestru {
    type: string
    sql: ${TABLE}.RNVP_RISQUERESTRU ;;
  }

  dimension: rnvp_statage {
    type: string
    sql: ${TABLE}.RNVP_STATAGE ;;
  }

  dimension: rnvp_ste {
    type: string
    sql: ${TABLE}.RNVP_STE ;;
  }

  dimension: rnvp_taille {
    type: string
    sql: ${TABLE}.RNVP_TAILLE ;;
  }

  dimension: rnvp_typevoielong {
    type: string
    sql: ${TABLE}.RNVP_TYPEVOIELONG ;;
  }

  dimension: rnvp_ville38 {
    type: string
    sql: ${TABLE}.RNVP_VILLE38 ;;
  }

  dimension: rnvp_x {
    type: string
    sql: ${TABLE}.RNVP_X ;;
  }

  dimension: rnvp_y {
    type: string
    sql: ${TABLE}.RNVP_Y ;;
  }
  measure: count {
    type: count
  }
}
