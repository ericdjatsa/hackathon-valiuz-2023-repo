# The name of this view in Looker is "Siren Establishment"
view: siren_establishment {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.SIREN_ESTABLISHMENT` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Activiteprincipaleetablissement" in Explore.

  dimension: activiteprincipaleetablissement {
    type: string
    sql: ${TABLE}.ACTIVITEPRINCIPALEETABLISSEMENT ;;
  }

  dimension: activiteprincipaleregistremetiersetablissement {
    type: string
    sql: ${TABLE}.ACTIVITEPRINCIPALEREGISTREMETIERSETABLISSEMENT ;;
  }

  dimension: anneeeffectifsetablissement {
    type: number
    sql: ${TABLE}.ANNEEEFFECTIFSETABLISSEMENT ;;
  }

  dimension: caractereemployeuretablissement {
    type: string
    sql: ${TABLE}.CARACTEREEMPLOYEURETABLISSEMENT ;;
  }

  dimension: codecedex2_etablissement {
    type: string
    sql: ${TABLE}.CODECEDEX2ETABLISSEMENT ;;
  }

  dimension: codecedex2_etablissement_nohash {
    type: string
    sql: ${TABLE}.CODECEDEX2ETABLISSEMENT_NOHASH ;;
  }

  dimension: codecedex2_etablissement_ws {
    type: string
    sql: ${TABLE}.CODECEDEX2ETABLISSEMENT_WS ;;
  }

  dimension: codecedexetablissement {
    type: string
    sql: ${TABLE}.CODECEDEXETABLISSEMENT ;;
  }

  dimension: codecedexetablissement_nohash {
    type: string
    sql: ${TABLE}.CODECEDEXETABLISSEMENT_NOHASH ;;
  }

  dimension: codecedexetablissement_ws {
    type: string
    sql: ${TABLE}.CODECEDEXETABLISSEMENT_WS ;;
  }

  dimension: codecommune2_etablissement {
    type: string
    sql: ${TABLE}.CODECOMMUNE2ETABLISSEMENT ;;
  }

  dimension: codecommune2_etablissement_nohash {
    type: string
    sql: ${TABLE}.CODECOMMUNE2ETABLISSEMENT_NOHASH ;;
  }

  dimension: codecommune2_etablissement_ws {
    type: string
    sql: ${TABLE}.CODECOMMUNE2ETABLISSEMENT_WS ;;
  }

  dimension: codecommuneetablissement {
    type: string
    sql: ${TABLE}.CODECOMMUNEETABLISSEMENT ;;
  }

  dimension: codecommuneetablissement_nohash {
    type: string
    sql: ${TABLE}.CODECOMMUNEETABLISSEMENT_NOHASH ;;
  }

  dimension: codecommuneetablissement_ws {
    type: string
    sql: ${TABLE}.CODECOMMUNEETABLISSEMENT_WS ;;
  }

  dimension: codepaysetranger2_etablissement {
    type: string
    sql: ${TABLE}.CODEPAYSETRANGER2ETABLISSEMENT ;;
  }

  dimension: codepaysetranger2_etablissement_nohash {
    type: string
    sql: ${TABLE}.CODEPAYSETRANGER2ETABLISSEMENT_NOHASH ;;
  }

  dimension: codepaysetranger2_etablissement_ws {
    type: string
    sql: ${TABLE}.CODEPAYSETRANGER2ETABLISSEMENT_WS ;;
  }

  dimension: codepaysetrangeretablissement {
    type: string
    sql: ${TABLE}.CODEPAYSETRANGERETABLISSEMENT ;;
  }

  dimension: codepaysetrangeretablissement_nohash {
    type: string
    sql: ${TABLE}.CODEPAYSETRANGERETABLISSEMENT_NOHASH ;;
  }

  dimension: codepaysetrangeretablissement_ws {
    type: string
    sql: ${TABLE}.CODEPAYSETRANGERETABLISSEMENT_WS ;;
  }

  dimension: codepostal2_etablissement {
    type: string
    sql: ${TABLE}.CODEPOSTAL2ETABLISSEMENT ;;
  }

  dimension: codepostal2_etablissement_nohash {
    type: string
    sql: ${TABLE}.CODEPOSTAL2ETABLISSEMENT_NOHASH ;;
  }

  dimension: codepostal2_etablissement_ws {
    type: string
    sql: ${TABLE}.CODEPOSTAL2ETABLISSEMENT_WS ;;
  }

  dimension: codepostaletablissement {
    type: string
    sql: ${TABLE}.CODEPOSTALETABLISSEMENT ;;
  }

  dimension: codepostaletablissement_nohash {
    type: string
    sql: ${TABLE}.CODEPOSTALETABLISSEMENT_NOHASH ;;
  }

  dimension: codepostaletablissement_ws {
    type: string
    sql: ${TABLE}.CODEPOSTALETABLISSEMENT_WS ;;
  }

  dimension: complementadresse2_etablissement {
    type: string
    sql: ${TABLE}.COMPLEMENTADRESSE2ETABLISSEMENT ;;
  }

  dimension: complementadresse2_etablissement_nohash {
    type: string
    sql: ${TABLE}.COMPLEMENTADRESSE2ETABLISSEMENT_NOHASH ;;
  }

  dimension: complementadresse2_etablissement_ws {
    type: string
    sql: ${TABLE}.COMPLEMENTADRESSE2ETABLISSEMENT_WS ;;
  }

  dimension: complementadresseetablissement {
    type: string
    sql: ${TABLE}.COMPLEMENTADRESSEETABLISSEMENT ;;
  }

  dimension: complementadresseetablissement_nohash {
    type: string
    sql: ${TABLE}.COMPLEMENTADRESSEETABLISSEMENT_NOHASH ;;
  }

  dimension: complementadresseetablissement_ws {
    type: string
    sql: ${TABLE}.COMPLEMENTADRESSEETABLISSEMENT_WS ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: datecreationetablissement {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATECREATIONETABLISSEMENT ;;
  }

  dimension: datedebut {
    type: string
    sql: ${TABLE}.DATEDEBUT ;;
  }

  dimension_group: datederniertraitementetablissement {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATEDERNIERTRAITEMENTETABLISSEMENT ;;
  }

  dimension: denominationusuelleetablissement {
    type: string
    sql: ${TABLE}.DENOMINATIONUSUELLEETABLISSEMENT ;;
  }

  dimension: distributionspeciale2_etablissement {
    type: string
    sql: ${TABLE}.DISTRIBUTIONSPECIALE2ETABLISSEMENT ;;
  }

  dimension: distributionspecialeetablissement {
    type: string
    sql: ${TABLE}.DISTRIBUTIONSPECIALEETABLISSEMENT ;;
  }

  dimension: enseigne1_etablissement {
    type: string
    sql: ${TABLE}.ENSEIGNE1ETABLISSEMENT ;;
  }

  dimension: enseigne2_etablissement {
    type: string
    sql: ${TABLE}.ENSEIGNE2ETABLISSEMENT ;;
  }

  dimension: enseigne3_etablissement {
    type: string
    sql: ${TABLE}.ENSEIGNE3ETABLISSEMENT ;;
  }

  dimension: etablissementsiege {
    type: yesno
    sql: ${TABLE}.ETABLISSEMENTSIEGE ;;
  }

  dimension: etatadministratifetablissement {
    type: string
    sql: ${TABLE}.ETATADMINISTRATIFETABLISSEMENT ;;
  }

  dimension: indicerepetition2_etablissement {
    type: string
    sql: ${TABLE}.INDICEREPETITION2ETABLISSEMENT ;;
  }

  dimension: indicerepetition2_etablissement_nohash {
    type: string
    sql: ${TABLE}.INDICEREPETITION2ETABLISSEMENT_NOHASH ;;
  }

  dimension: indicerepetition2_etablissement_ws {
    type: string
    sql: ${TABLE}.INDICEREPETITION2ETABLISSEMENT_WS ;;
  }

  dimension: indicerepetitionetablissement {
    type: string
    sql: ${TABLE}.INDICEREPETITIONETABLISSEMENT ;;
  }

  dimension: indicerepetitionetablissement_nohash {
    type: string
    sql: ${TABLE}.INDICEREPETITIONETABLISSEMENT_NOHASH ;;
  }

  dimension: indicerepetitionetablissement_ws {
    type: string
    sql: ${TABLE}.INDICEREPETITIONETABLISSEMENT_WS ;;
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

  dimension: libellecedex2_etablissement {
    type: string
    sql: ${TABLE}.LIBELLECEDEX2ETABLISSEMENT ;;
  }

  dimension: libellecedex2_etablissement_nohash {
    type: string
    sql: ${TABLE}.LIBELLECEDEX2ETABLISSEMENT_NOHASH ;;
  }

  dimension: libellecedex2_etablissement_ws {
    type: string
    sql: ${TABLE}.LIBELLECEDEX2ETABLISSEMENT_WS ;;
  }

  dimension: libellecedexetablissement {
    type: string
    sql: ${TABLE}.LIBELLECEDEXETABLISSEMENT ;;
  }

  dimension: libellecedexetablissement_nohash {
    type: string
    sql: ${TABLE}.LIBELLECEDEXETABLISSEMENT_NOHASH ;;
  }

  dimension: libellecedexetablissement_ws {
    type: string
    sql: ${TABLE}.LIBELLECEDEXETABLISSEMENT_WS ;;
  }

  dimension: libellecommune2_etablissement {
    type: string
    sql: ${TABLE}.LIBELLECOMMUNE2ETABLISSEMENT ;;
  }

  dimension: libellecommune2_etablissement_nohash {
    type: string
    sql: ${TABLE}.LIBELLECOMMUNE2ETABLISSEMENT_NOHASH ;;
  }

  dimension: libellecommune2_etablissement_ws {
    type: string
    sql: ${TABLE}.LIBELLECOMMUNE2ETABLISSEMENT_WS ;;
  }

  dimension: libellecommuneetablissement {
    type: string
    sql: ${TABLE}.LIBELLECOMMUNEETABLISSEMENT ;;
  }

  dimension: libellecommuneetablissement_nohash {
    type: string
    sql: ${TABLE}.LIBELLECOMMUNEETABLISSEMENT_NOHASH ;;
  }

  dimension: libellecommuneetablissement_ws {
    type: string
    sql: ${TABLE}.LIBELLECOMMUNEETABLISSEMENT_WS ;;
  }

  dimension: libellecommuneetranger2_etablissement {
    type: string
    sql: ${TABLE}.LIBELLECOMMUNEETRANGER2ETABLISSEMENT ;;
  }

  dimension: libellecommuneetranger2_etablissement_nohash {
    type: string
    sql: ${TABLE}.LIBELLECOMMUNEETRANGER2ETABLISSEMENT_NOHASH ;;
  }

  dimension: libellecommuneetranger2_etablissement_ws {
    type: string
    sql: ${TABLE}.LIBELLECOMMUNEETRANGER2ETABLISSEMENT_WS ;;
  }

  dimension: libellecommuneetrangeretablissement {
    type: string
    sql: ${TABLE}.LIBELLECOMMUNEETRANGERETABLISSEMENT ;;
  }

  dimension: libellecommuneetrangeretablissement_nohash {
    type: string
    sql: ${TABLE}.LIBELLECOMMUNEETRANGERETABLISSEMENT_NOHASH ;;
  }

  dimension: libellecommuneetrangeretablissement_ws {
    type: string
    sql: ${TABLE}.LIBELLECOMMUNEETRANGERETABLISSEMENT_WS ;;
  }

  dimension: libellepaysetranger2_etablissement {
    type: string
    sql: ${TABLE}.LIBELLEPAYSETRANGER2ETABLISSEMENT ;;
  }

  dimension: libellepaysetranger2_etablissement_nohash {
    type: string
    sql: ${TABLE}.LIBELLEPAYSETRANGER2ETABLISSEMENT_NOHASH ;;
  }

  dimension: libellepaysetranger2_etablissement_ws {
    type: string
    sql: ${TABLE}.LIBELLEPAYSETRANGER2ETABLISSEMENT_WS ;;
  }

  dimension: libellepaysetrangeretablissement {
    type: string
    sql: ${TABLE}.LIBELLEPAYSETRANGERETABLISSEMENT ;;
  }

  dimension: libellepaysetrangeretablissement_nohash {
    type: string
    sql: ${TABLE}.LIBELLEPAYSETRANGERETABLISSEMENT_NOHASH ;;
  }

  dimension: libellepaysetrangeretablissement_ws {
    type: string
    sql: ${TABLE}.LIBELLEPAYSETRANGERETABLISSEMENT_WS ;;
  }

  dimension: libellevoie2_etablissement {
    type: string
    sql: ${TABLE}.LIBELLEVOIE2ETABLISSEMENT ;;
  }

  dimension: libellevoie2_etablissement_nohash {
    type: string
    sql: ${TABLE}.LIBELLEVOIE2ETABLISSEMENT_NOHASH ;;
  }

  dimension: libellevoie2_etablissement_ws {
    type: string
    sql: ${TABLE}.LIBELLEVOIE2ETABLISSEMENT_WS ;;
  }

  dimension: libellevoieetablissement {
    type: string
    sql: ${TABLE}.LIBELLEVOIEETABLISSEMENT ;;
  }

  dimension: libellevoieetablissement_nohash {
    type: string
    sql: ${TABLE}.LIBELLEVOIEETABLISSEMENT_NOHASH ;;
  }

  dimension: libellevoieetablissement_ws {
    type: string
    sql: ${TABLE}.LIBELLEVOIEETABLISSEMENT_WS ;;
  }

  dimension: nic {
    type: string
    sql: ${TABLE}.NIC ;;
  }

  dimension: nombreperiodesetablissement {
    type: number
    sql: ${TABLE}.NOMBREPERIODESETABLISSEMENT ;;
  }

  dimension: nomenclatureactiviteprincipaleetablissement {
    type: string
    sql: ${TABLE}.NOMENCLATUREACTIVITEPRINCIPALEETABLISSEMENT ;;
  }

  dimension: numerovoie2_etablissement {
    type: string
    sql: ${TABLE}.NUMEROVOIE2ETABLISSEMENT ;;
  }

  dimension: numerovoie2_etablissement_nohash {
    type: string
    sql: ${TABLE}.NUMEROVOIE2ETABLISSEMENT_NOHASH ;;
  }

  dimension: numerovoie2_etablissement_ws {
    type: string
    sql: ${TABLE}.NUMEROVOIE2ETABLISSEMENT_WS ;;
  }

  dimension: numerovoieetablissement {
    type: string
    sql: ${TABLE}.NUMEROVOIEETABLISSEMENT ;;
  }

  dimension: numerovoieetablissement_nohash {
    type: string
    sql: ${TABLE}.NUMEROVOIEETABLISSEMENT_NOHASH ;;
  }

  dimension: numerovoieetablissement_ws {
    type: string
    sql: ${TABLE}.NUMEROVOIEETABLISSEMENT_WS ;;
  }

  dimension: opendata_siren_establishment_uid {
    type: string
    sql: ${TABLE}.OPENDATA_SIREN_ESTABLISHMENT_UID ;;
  }

  dimension: rnvp_adrs {
    type: string
    sql: ${TABLE}.RNVP_ADRS ;;
  }

  dimension: rnvp_adrs_nohash {
    type: string
    sql: ${TABLE}.RNVP_ADRS_NOHASH ;;
  }

  dimension: rnvp_adrs_ws {
    type: string
    sql: ${TABLE}.RNVP_ADRS_WS ;;
  }

  dimension: rnvp_armee {
    type: string
    sql: ${TABLE}.RNVP_ARMEE ;;
  }

  dimension: rnvp_cadrs {
    type: string
    sql: ${TABLE}.RNVP_CADRS ;;
  }

  dimension: rnvp_cadrs_nohash {
    type: string
    sql: ${TABLE}.RNVP_CADRS_NOHASH ;;
  }

  dimension: rnvp_cadrs_ws {
    type: string
    sql: ${TABLE}.RNVP_CADRS_WS ;;
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

  dimension: rnvp_civ {
    type: string
    sql: ${TABLE}.RNVP_CIV ;;
  }

  dimension: rnvp_cnom {
    type: string
    sql: ${TABLE}.RNVP_CNOM ;;
  }

  dimension: rnvp_cp {
    type: string
    sql: ${TABLE}.RNVP_CP ;;
  }

  dimension: rnvp_cpville {
    type: string
    sql: ${TABLE}.RNVP_CPVILLE ;;
  }

  dimension: rnvp_cpville_nohash {
    type: string
    sql: ${TABLE}.RNVP_CPVILLE_NOHASH ;;
  }

  dimension: rnvp_cpville_ws {
    type: string
    sql: ${TABLE}.RNVP_CPVILLE_WS ;;
  }

  dimension: rnvp_cqadrs {
    type: number
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

  dimension: rnvp_libvoie_nohash {
    type: string
    sql: ${TABLE}.RNVP_LIBVOIE_NOHASH ;;
  }

  dimension: rnvp_libvoie_ws {
    type: string
    sql: ${TABLE}.RNVP_LIBVOIE_WS ;;
  }

  dimension: rnvp_lieudit {
    type: string
    sql: ${TABLE}.RNVP_LIEUDIT ;;
  }

  dimension: rnvp_lieudit_nohash {
    type: string
    sql: ${TABLE}.RNVP_LIEUDIT_NOHASH ;;
  }

  dimension: rnvp_lieudit_ws {
    type: string
    sql: ${TABLE}.RNVP_LIEUDIT_WS ;;
  }

  dimension: rnvp_nom {
    type: string
    sql: ${TABLE}.RNVP_NOM ;;
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

  dimension: rnvp_prenom {
    type: string
    sql: ${TABLE}.RNVP_PRENOM ;;
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

  dimension: rnvp_rsoc {
    type: string
    sql: ${TABLE}.RNVP_RSOC ;;
  }

  dimension: rnvp_sex {
    type: string
    sql: ${TABLE}.RNVP_SEX ;;
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

  dimension: rnvp_typevoielong_nohash {
    type: string
    sql: ${TABLE}.RNVP_TYPEVOIELONG_NOHASH ;;
  }

  dimension: rnvp_typevoielong_ws {
    type: string
    sql: ${TABLE}.RNVP_TYPEVOIELONG_WS ;;
  }

  dimension: rnvp_ville {
    type: string
    sql: ${TABLE}.RNVP_VILLE ;;
  }

  dimension: rnvp_ville38 {
    type: string
    sql: ${TABLE}.RNVP_VILLE38 ;;
  }

  dimension: rnvp_ville38_nohash {
    type: string
    sql: ${TABLE}.RNVP_VILLE38_NOHASH ;;
  }

  dimension: rnvp_ville38_ws {
    type: string
    sql: ${TABLE}.RNVP_VILLE38_WS ;;
  }

  dimension: rnvp_x {
    type: string
    sql: ${TABLE}.RNVP_X ;;
  }

  dimension: rnvp_x_nohash {
    type: string
    sql: ${TABLE}.RNVP_X_NOHASH ;;
  }

  dimension: rnvp_x_ws {
    type: string
    sql: ${TABLE}.RNVP_X_WS ;;
  }

  dimension: rnvp_y {
    type: string
    sql: ${TABLE}.RNVP_Y ;;
  }

  dimension: rnvp_y_nohash {
    type: string
    sql: ${TABLE}.RNVP_Y_NOHASH ;;
  }

  dimension: rnvp_y_ws {
    type: string
    sql: ${TABLE}.RNVP_Y_WS ;;
  }

  dimension: siren {
    type: string
    sql: ${TABLE}.SIREN ;;
  }

  dimension: siret {
    type: string
    sql: ${TABLE}.SIRET ;;
  }

  dimension: statutdiffusionetablissement {
    type: string
    sql: ${TABLE}.STATUTDIFFUSIONETABLISSEMENT ;;
  }

  dimension: trancheeffectifsetablissement {
    type: string
    sql: ${TABLE}.TRANCHEEFFECTIFSETABLISSEMENT ;;
  }

  dimension: typevoie2_etablissement {
    type: string
    sql: ${TABLE}.TYPEVOIE2ETABLISSEMENT ;;
  }

  dimension: typevoie2_etablissement_nohash {
    type: string
    sql: ${TABLE}.TYPEVOIE2ETABLISSEMENT_NOHASH ;;
  }

  dimension: typevoie2_etablissement_ws {
    type: string
    sql: ${TABLE}.TYPEVOIE2ETABLISSEMENT_WS ;;
  }

  dimension: typevoieetablissement {
    type: string
    sql: ${TABLE}.TYPEVOIEETABLISSEMENT ;;
  }

  dimension: typevoieetablissement_nohash {
    type: string
    sql: ${TABLE}.TYPEVOIEETABLISSEMENT_NOHASH ;;
  }

  dimension: typevoieetablissement_ws {
    type: string
    sql: ${TABLE}.TYPEVOIEETABLISSEMENT_WS ;;
  }
  measure: count {
    type: count
  }
}
