# The name of this view in Looker is "Navigation Web Detailled"
view: navigation_web_detailled {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_entity.NAVIGATION_WEB_DETAILLED` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: event {
    type: time
    description: "Date de l'événement."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.EVENT_DATE ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Event ID" in Explore.

  dimension: event_id {
    type: string
    description: "Identifiant unique d’une page vue ou d’une action."
    sql: ${TABLE}.EVENT_ID ;;
  }

  dimension: event_uid {
    type: string
    description: "#PK - EVENT_ID hashé."
    sql: ${TABLE}.EVENT_UID ;;
  }

  dimension: idclient_ens {
    type: string
    description: "#FK - Identifiant client unique pour l’enseigne du client, fourni par l'enseigne."
    sql: ${TABLE}.IDCLIENT_ENS ;;
  }

  dimension: member {
    type: string
    description: "#FK - Trigramme correspondant au nom de l'enseigne."
    sql: ${TABLE}.MEMBER ;;
  }

  dimension: navigation_info {
    type: string
    description: "A définir.Uniquement des valeurs à null."
    sql: ${TABLE}.NAVIGATION_INFO ;;
  }

  dimension: order_event {
    type: number
    description: "Numéro de l'évènement dans la session."
    sql: ${TABLE}.ORDER_EVENT ;;
  }

  dimension: page_breadcrumb {
    type: string
    description: "Les pages C1 a C4 avec un pipe."
    sql: ${TABLE}.PAGE_BREADCRUMB ;;
  }

  dimension: page_c1 {
    type: string
    description: "Premier niveau d’arborescence d’après la méthode du Fil d’Ariane (breadcrumb trail)"
    sql: ${TABLE}.PAGE_C1 ;;
  }

  dimension: page_c2 {
    type: string
    description: "Deuxième niveau d’arborescence d’après la méthode du Fil d’Ariane (breadcrumb trail)"
    sql: ${TABLE}.PAGE_C2 ;;
  }

  dimension: page_c3 {
    type: string
    description: "Troisième niveau d’arborescence d’après la méthode du Fil d’Ariane (breadcrumb trail)"
    sql: ${TABLE}.PAGE_C3 ;;
  }

  dimension: page_c4 {
    type: string
    description: "Quatrième niveau d’arborescence d’après la méthode du Fil d’Ariane (breadcrumb trail)"
    sql: ${TABLE}.PAGE_C4 ;;
  }

  dimension: page_keywords {
    type: string
    description: "Mots clés utilisés par le client lorsque l’évènement est de type “Recherche”."
    sql: ${TABLE}.PAGE_KEYWORDS ;;
  }

  dimension: page_name {
    type: string
    description: "Libellé du template de la page."
    sql: ${TABLE}.PAGE_NAME ;;
  }

  dimension: page_products_brand {
    type: string
    description: "Marque du produit qui est sur une page produit."
    sql: ${TABLE}.PAGE_PRODUCTS_BRAND ;;
  }

  dimension: page_products_id {
    type: string
    description: "Identifiant du produit issu de la navigation."
    sql: ${TABLE}.PAGE_PRODUCTS_ID ;;
  }

  dimension: page_products_name {
    type: string
    description: "Nom du produit."
    sql: ${TABLE}.PAGE_PRODUCTS_NAME ;;
  }

  dimension: page_products_product_category {
    type: string
    description: "Catégorie du produit."
    sql: ${TABLE}.PAGE_PRODUCTS_PRODUCT_CATEGORY ;;
  }

  dimension: referrer {
    type: string
    description: "URL de la page précédente."
    sql: ${TABLE}.REFERRER ;;
  }

  dimension: session_id {
    type: string
    description: "#FK - Identifiant de la session auquel est attaché l'événement. Une session est créée si la page est rechargé après plus de 30 minutes d’inactivité ou si un nouvel onglet est ouvert ou si le navigateur à été fermé et réouvert."
    sql: ${TABLE}.SESSION_ID ;;
  }

  dimension: utm_campaign {
    type: string
    description: "Nom de la campagne marketing."
    sql: ${TABLE}.UTM_CAMPAIGN ;;
  }

  dimension: vector_id {
    type: string
    description: "Identifiant du cookie posé par MICS."
    sql: ${TABLE}.VECTOR_ID ;;
  }

  dimension: visited_page {
    type: string
    description: "Nombre de pages visitées dans la session."
    sql: ${TABLE}.VISITED_PAGE ;;
  }

  dimension: web_event_type {
    type: string
    description: "Libellé de l'événement."
    sql: ${TABLE}.WEB_EVENT_TYPE ;;
  }

  dimension: year_month {
    type: number
    description: "Concaténation de l’année et du mois se trouvant dans la colonne DATE_TICKET, fournie par l’enseigne. Si la date du ticket change alors cette valeur change"
    sql: ${TABLE}.YEAR_MONTH ;;
  }
  measure: count {
    type: count
    drill_fields: [page_products_name, page_name]
  }
}
