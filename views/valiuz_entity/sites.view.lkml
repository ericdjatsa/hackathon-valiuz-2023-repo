# The name of this view in Looker is "Sites"
view: sites {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_entity.SITES` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Adress" in Explore.

  dimension: adress {
    type: string
    description: "Adresse du magasin, fournie par l’enseigne."
    sql: ${TABLE}.ADRESS ;;
  }

  dimension: commercial_zone_uid {
    type: string
    description: "Libellé de la zone commerciale, fourni par l’enseigne"
    sql: ${TABLE}.COMMERCIAL_ZONE_UID ;;
  }

  dimension: country {
    type: string
    description: "Code pays du magasin, fourni par l’enseigne."
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: latitude {
    type: string
    description: "Coordonnée géographique de latitude d'un magasin, fournie par l’enseigne."
    sql: ${TABLE}.LATITUDE ;;
  }

  dimension: longitude {
    type: string
    description: "Coordonnée géographique de longitude d'un magasin, fournie par l’enseigne."
    sql: ${TABLE}.LONGITUDE ;;
  }

  dimension: member {
    type: string
    description: "#FK - Trigramme correspondant au nom de l'enseigne."
    sql: ${TABLE}.MEMBER ;;
  }

  dimension: pos_id {
    type: string
    description: "#FK - Identifiant unique du magasin, fourni par l'enseigne."
    sql: ${TABLE}.POS_ID ;;
  }

  dimension: pos_name {
    type: string
    description: "Nom du magasin, fourni par l’enseigne."
    sql: ${TABLE}.POS_NAME ;;
  }

  dimension: postal_code_city {
    type: string
    description: "Concaténation du code postal et de la ville du magasin, fournis par l’enseigne."
    sql: ${TABLE}.POSTAL_CODE_CITY ;;
  }

  dimension: rnvp_adrs {
    type: string
    description: "Adresse du magasin après traitement RNVP."
    sql: ${TABLE}.RNVP_ADRS ;;
  }

  dimension: rnvp_cadrs {
    type: string
    description: "Complément d’adresse après traitement RNVP."
    sql: ${TABLE}.RNVP_CADRS ;;
  }

  dimension: rnvp_carreaucodecarreau {
    type: string
    description: "Code carreau après traitement RNVP."
    sql: ${TABLE}.RNVP_CARREAUCODECARREAU ;;
  }

  dimension: rnvp_carreaucoderectangle {
    type: string
    description: "Code rectangle après traitement RNVP."
    sql: ${TABLE}.RNVP_CARREAUCODERECTANGLE ;;
  }

  dimension: rnvp_carreaucq {
    type: string
    description: "Code qualité du code carreau après traitement RNVP."
    sql: ${TABLE}.RNVP_CARREAUCQ ;;
  }

  dimension: rnvp_cpville {
    type: string
    description: "Concaténation du code postal et de la ville après traitement RNVP."
    sql: ${TABLE}.RNVP_CPVILLE ;;
  }

  dimension: rnvp_cqxy {
    type: string
    description: "Code qualité sur la longitude et la latitude des sites après traitement RNVP."
    sql: ${TABLE}.RNVP_CQXY ;;
  }

  dimension: rnvp_domtom {
    type: string
    description: "Indication si le magasin se trouve dans les DOMTOM après traitement RNVP."
    sql: ${TABLE}.RNVP_DOMTOM ;;
  }

  dimension: rnvp_etranger {
    type: string
    description: "Indication si le magasin se trouve à l'étranger après traitement RNVP."
    sql: ${TABLE}.RNVP_ETRANGER ;;
  }

  dimension: rnvp_insee {
    type: string
    description: "Identifiant INSEE après traitement RNVP."
    sql: ${TABLE}.RNVP_INSEE ;;
  }

  dimension: rnvp_inseeglobal {
    type: string
    description: "Code INSEEE complet de la commune pour les villes à arrondissement après traitement RNVP. https://drive.google.com/file/d/10s-0AQB-XPinZtpouG-zlInYqV8XZeLD/view?usp=sharing - Connectez votre compte Google - Connectez votre compte Google"
    sql: ${TABLE}.RNVP_INSEEGLOBAL ;;
  }

  dimension: rnvp_iriscodeiris {
    type: string
    description: "Code IRIS après traitement RNVP."
    sql: ${TABLE}.RNVP_IRISCODEIRIS ;;
  }

  dimension: rnvp_iriscq {
    type: string
    description: "Code qualité du code IRIS après traitement RNVP."
    sql: ${TABLE}.RNVP_IRISCQ ;;
  }

  dimension: rnvp_libdept {
    type: string
    description: "Libellé du département après traitement RNVP."
    sql: ${TABLE}.RNVP_LIBDEPT ;;
  }

  dimension: rnvp_libvoie {
    type: string
    description: "Libellé de la voie après traitement RNVP."
    sql: ${TABLE}.RNVP_LIBVOIE ;;
  }

  dimension: rnvp_lieudit {
    type: string
    description: "Lieu-dit après traitement RNVP."
    sql: ${TABLE}.RNVP_LIEUDIT ;;
  }

  dimension: rnvp_numdept {
    type: string
    description: "Numéro du département après traitement RNVP."
    sql: ${TABLE}.RNVP_NUMDEPT ;;
  }

  dimension: rnvp_poidsmodif {
    type: string
    description: "POIDSMODIF (correspond à un score de véracité entre deux adresses - ex : '100' veut dire que deux adresses sont identiques) après traitement RNVP. https://drive.google.com/file/d/10s-0AQB-XPinZtpouG-zlInYqV8XZeLD/view?usp=sharing - Connectez votre compte Google"
    sql: ${TABLE}.RNVP_POIDSMODIF ;;
  }

  dimension: rnvp_regionadministrative {
    type: string
    description: "Région administrative après traitement RNVP."
    sql: ${TABLE}.RNVP_REGIONADMINISTRATIVE ;;
  }

  dimension: rnvp_rejet {
    type: string
    description: "Indication si la RNVP n’a pu accomplir correctement son travail. Les valeurs possible sont soit R ou null ou ““."
    sql: ${TABLE}.RNVP_REJET ;;
  }

  dimension: rnvp_taille {
    type: string
    description: "Code taille de la commune après traitement RNVP. https://drive.google.com/file/d/10s-0AQB-XPinZtpouG-zlInYqV8XZeLD/view?usp=sharing - Connectez votre compte Google"
    sql: ${TABLE}.RNVP_TAILLE ;;
  }

  dimension: rnvp_typevoielong {
    type: string
    description: "Libellé long de la voie après traitement RNVP."
    sql: ${TABLE}.RNVP_TYPEVOIELONG ;;
  }

  dimension: rnvp_ville38 {
    type: string
    description: "Nom de la ville sur 38 caractères maximum après traitement RNVP."
    sql: ${TABLE}.RNVP_VILLE38 ;;
  }

  dimension: site_uid {
    type: string
    description: "#PK - Identifiant unique du magasin, calculé par Valiuz."
    sql: ${TABLE}.SITE_UID ;;
  }

  dimension: source {
    type: string
    description: "Indication qui détermine l’origine du magasin dans la table (RAW / RNVP / NORMALIZED). Normalisation des adresses"
    sql: ${TABLE}.SOURCE ;;
  }

  dimension: type {
    type: string
    description: "Indication qui détermine le type de magasin (Shop / Drive/ Internet / Auchan Direct), fourni par l’enseigne"
    sql: ${TABLE}.TYPE ;;
  }
  measure: count {
    type: count
    drill_fields: [pos_name]
  }
}
