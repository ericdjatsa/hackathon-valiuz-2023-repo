# The name of this view in Looker is "Profiles"
view: profiles {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_entity.PROFILES` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _partitiondate {
    hidden: yes
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
    hidden: yes
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Age Vlz" in Explore.

  dimension: age_vlz {
    type: string
    description: "Tranche d'âge issue du quorum Valiuz."
    sql: ${TABLE}.AGE_VLZ ;;
  }

  dimension: count_idclient_vlz {
    type: number
    description: "Nombre d'occurrences de l'Identifiant calculé par Valiuz unique."
    value_format_name: id
    sql: ${TABLE}.COUNT_IDCLIENT_VLZ ;;
  }

  dimension: count_member {
    type: number
    description: "Nombre d’enseigne dans le quel l’identifiant client Valiuz est présent."
    sql: ${TABLE}.COUNT_MEMBER ;;
  }

  dimension: gender_vlz {
    type: string
    description: "Civilité du client calculée par Valiuz."
    sql: ${TABLE}.GENDER_VLZ ;;
  }

  dimension: has_loyalty_card {
    type: number
    description: "Indication sur la présence d'une carte de fidélité, fournie par l’enseigne. (1=OUI, 0=NON)."
    sql: ${TABLE}.HAS_LOYALTY_CARD ;;
  }

  dimension: idclient_ens {
    type: string
    description: "#PK - Identifiant client unique pour l’enseigne du client, fourni par l'enseigne."
    sql: ${TABLE}.IDCLIENT_ENS ;;
  }

  dimension: idclient_vlz {
    type: string
    description: "#FK - Identifiant client généré par Valiuz résultant de l’algorithme CHARLIE."
    sql: ${TABLE}.IDCLIENT_VLZ ;;
  }

  dimension: idclient_vlz_charlight {
    type: string
    description: "#FK - Identifiant client généré par Valiuz résultant de l’algorithme CHARLIGHT."
    sql: ${TABLE}.IDCLIENT_VLZ_CHARLIGHT ;;
  }

  dimension: idhousehold_vlz {
    type: string
    description: "#FK - Identifiant unique du foyer résultant de l’algorithme CHARLIE ."
    sql: ${TABLE}.IDHOUSEHOLD_VLZ ;;
  }

  dimension: iris_vlz {
    type: string
    description: "Identifiant IRIS calculé par Valiuz."
    sql: ${TABLE}.IRIS_VLZ ;;
  }

  dimension: is_b2_b {
    type: number
    description: "Indication qui détermine si le client est un professionnel ('0' : client non professionnel, '1': client professionnel)."
    sql: ${TABLE}.IS_B2B ;;
  }

  dimension: ishabitationverticale {
    type: string
    description: "Indication sur le type d'habitat d'une personne obtenue par un algorithme .Egale à 'V' si la personne habite en appartement."
    sql: ${TABLE}.ISHABITATIONVERTICALE ;;
  }

  dimension: member {
    type: string
    description: "#PK - Trigramme correspondant au nom de l'enseigne."
    sql: ${TABLE}.MEMBER ;;
  }

  dimension: neighborhood_type_vlz {
    type: string
    description: "Concaténation du code et de la description du type de quartier, calculé par le score type de quartier Valiuz."
    sql: ${TABLE}.NEIGHBORHOOD_TYPE_VLZ ;;
  }

  dimension: optin_mail {
    type: number
    description: "Indication du consentement du client pour une sollicitation marketing par email, fournie par l’enseigne. Si on a pas l’information alors on met la valeur à null.(1=OUI, 0=NON)"
    sql: ${TABLE}.OPTIN_MAIL ;;
  }

  dimension: optin_print {
    type: number
    description: "Indication du consentement du client pour une sollicitation marketing par courrier, fournie par l’enseigne. Si on a pas l’information alors on met la valeur à null."
    sql: ${TABLE}.OPTIN_PRINT ;;
  }

  dimension: optin_push_app {
    type: number
    description: "Indication du consentement du client pour une sollicitation marketing par notification dans une application, fournie par l’enseigne. Si on a pas l’information alors on met la valeur à null.(1=OUI, 0=NON)"
    sql: ${TABLE}.OPTIN_PUSH_APP ;;
  }

  dimension: optin_push_web {
    type: number
    description: "Indication du consentement du client pour une sollicitation marketing par notification web, fournie par l’enseigne. Si on a pas l’information alors on met la valeur à null.(1=OUI, 0=NON)"
    sql: ${TABLE}.OPTIN_PUSH_WEB ;;
  }

  dimension: optin_sms {
    type: number
    description: "Indication du consentement du client pour une sollicitation marketing par sms, fournie par l’enseigne. Si on a pas l’information alors on met la valeur à null.(1=OUI, 0=NON)"
    sql: ${TABLE}.OPTIN_SMS ;;
  }

  dimension: optin_tel {
    type: number
    description: "Indication du consentement du client pour une sollicitation marketing par téléphone, fournie par l’enseigne. Si on a pas l’information alors on met la valeur à null.(1=OUI, 0=NON)"
    sql: ${TABLE}.OPTIN_TEL ;;
  }

  dimension: rectangle_vlz {
    type: string
    description: "Identifiant du rectangle INSEE calculé par Valiuz."
    sql: ${TABLE}.RECTANGLE_VLZ ;;
  }

  dimension: tile_vlz {
    type: string
    description: "Identifiant du carreau INSEE calculé par Valiuz."
    sql: ${TABLE}.TILE_VLZ ;;
  }
  measure: count {
    type: count
  }
}
