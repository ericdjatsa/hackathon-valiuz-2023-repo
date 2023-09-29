# The name of this view in Looker is "Tickets"
view: tickets {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_entity.TICKETS` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Channel" in Explore.

  dimension: channel {
    type: string
    description: "Mode de vente pour le ticket, fourni par l'enseigne.(WEB, UNKNOWN, MAG, WEB|WEB|WEB, WEB|WEB, WEB|WEB|WEB|WEB, WEB|WEB|WEB|WEB|WEB|WEB|WEB, WEB|WEB|WEB|WEB|WEB|WEB, WEB|WEB|WEB|WEB|WEB, WEB|MAG, WEB|WEB|WEB|WEB|WEB|WEB|WEB|WEB, MOBILE, MAG|MAG|WEB, MAG|MAG, MAG|WEB, MAG|MAG|MAG|MAG, null)"
    sql: ${TABLE}.CHANNEL ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_ticket {
    type: time
    description: "Date démission du ticket par l’enseigne, fourni par l'enseigne."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATE_TICKET ;;
  }

  dimension: delivery_mode {
    type: string
    description: "Mode de livraison pour le ticket, fourni par l'enseigne.(POINT RELAIS, UNKNOWN, DOMICILE, DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE, MAGASIN|UNKNOWN, MAGASIN, DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE, null, MAGASIN_RESA, MAGASIN|POINT RELAIS, MAGASIN|MAGASIN_RESA, DOMICILE|MAGASIN, MAGASIN|MAGASIN|MAGASIN_RESA, MAGASIN|MAGASIN, POINT RELAIS|MAGASIN, MAGASIN|MAGASIN|MAGASIN|MAGASIN)"
    sql: ${TABLE}.DELIVERY_MODE ;;
  }

  dimension: idclient_ens {
    type: string
    description: "#FK - Identifiant client unique pour l’enseigne du client, fourni par l'enseigne."
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

  dimension: member {
    type: string
    description: "#FK - Trigramme correspondant au nom de l'enseigne."
    sql: ${TABLE}.MEMBER ;;
  }

  dimension: pos_id {
    type: string
    description: "#FK - Identifiant du magasin présent sur le ticket, fourni par l'enseigne."
    sql: ${TABLE}.POS_ID ;;
  }

  dimension: pos_name {
    type: string
    description: "Nom du magasin présent sur le ticket, fourni par l'enseigne."
    sql: ${TABLE}.POS_NAME ;;
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

  dimension: year_month {
    type: number
    description: "Concaténation de l’année et du mois se trouvant dans la colonne DATE_TICKET, fournie par l’enseigne. Si la date du ticket change alors cette valeur change."
    sql: ${TABLE}.YEAR_MONTH ;;
  }
  measure: count {
    type: count
    drill_fields: [pos_name]
  }
}
