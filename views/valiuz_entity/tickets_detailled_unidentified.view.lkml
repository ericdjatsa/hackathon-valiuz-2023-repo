# The name of this view in Looker is "Tickets Detailled Unidentified"
view: tickets_detailled_unidentified {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_entity.TICKETS_DETAILLED_UNIDENTIFIED` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Brand" in Explore.

  dimension: brand {
    type: string
    description: "Marque du produit, fourni par l'enseigne et identique à la table product_nomenclature."
    sql: ${TABLE}.BRAND ;;
  }

  dimension: channel {
    type: string
    description: "Mode de vente pour le ticket, fourni par l'enseigne.(WEB, UNKNOWN, MAG, WEB|WEB|WEB, WEB|WEB, WEB|WEB|WEB|WEB, WEB|WEB|WEB|WEB|WEB|WEB|WEB, WEB|WEB|WEB|WEB|WEB|WEB, WEB|WEB|WEB|WEB|WEB, WEB|MAG, WEB|WEB|WEB|WEB|WEB|WEB|WEB|WEB, MOBILE, MAG|MAG|WEB, MAG|MAG, MAG|WEB, MAG|MAG|MAG|MAG, null)"
    sql: ${TABLE}.CHANNEL ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_product {
    type: time
    description: "Date d'achat du produit, fournie par l’enseigne."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATE_PRODUCT ;;
  }

  dimension: delivery_mode {
    type: string
    description: "Mode de livraison pour le ticket, fourni par l'enseigne.(POINT RELAIS, UNKNOWN, DOMICILE, DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE, MAGASIN|UNKNOWN, MAGASIN, DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE, null, MAGASIN_RESA, MAGASIN|POINT RELAIS, MAGASIN|MAGASIN_RESA, DOMICILE|MAGASIN, MAGASIN|MAGASIN|MAGASIN_RESA, MAGASIN|MAGASIN, POINT RELAIS|MAGASIN, MAGASIN|MAGASIN|MAGASIN|MAGASIN)"
    sql: ${TABLE}.DELIVERY_MODE ;;
  }

  dimension: is_discount {
    type: yesno
    description: "Définition cible, Indication qui détermine si le produit est remisé (“True”: il y a une promotion)"
    sql: ${TABLE}.IS_DISCOUNT ;;
  }

  dimension: label {
    type: string
    description: "Libellé du produit, fourni par l'enseigne et identique à la table product_nomenclature."
    sql: ${TABLE}.LABEL ;;
  }

  dimension: ligne_number {
    type: number
    description: "#PK - Numéro de ligne dans un ticket, fourni par l’enseigne ou calculé par Valiuz."
    sql: ${TABLE}.LIGNE_NUMBER ;;
  }

  dimension: member {
    type: string
    description: "Date d'insertion des données."
    sql: ${TABLE}.MEMBER ;;
  }

  dimension: product_id {
    type: string
    description: "Identifiant unique d'un produit, fourni par l'enseigne."
    sql: ${TABLE}.PRODUCT_ID ;;
  }

  dimension: product_level {
    type: string
    description: "Nomenclature du produit, fournie par l’enseigne et identique à la table product_nomenclature."
    sql: ${TABLE}.PRODUCT_LEVEL ;;
  }

  dimension: product_level_id {
    type: string
    description: "Code de la nomenclature produit."
    sql: ${TABLE}.PRODUCT_LEVEL_ID ;;
  }

  dimension: product_uid {
    type: string
    description: "#PK - Identifiant unique d'un produit. Attention, pour le MEMBER='KIA', le product_id désigne une référence, et pas une référence-coloris-taille. Bug connu en cours de résolution côté enseigne."
    sql: ${TABLE}.PRODUCT_UID ;;
  }

  dimension: quantity {
    type: number
    description: "Quantité vendue par produit. Strictement positif"
    sql: ${TABLE}.QUANTITY ;;
  }

  dimension: ticket_id {
    type: string
    description: "#FK - Identifiant unique du ticket, fourni par l'enseigne."
    sql: ${TABLE}.TICKET_ID ;;
  }

  dimension: ticket_uid {
    type: string
    description: "#PK - Identifiant unique du ticket, calculé par Valiuz."
    sql: ${TABLE}.TICKET_UID ;;
  }
  measure: count {
    type: count
  }
}
