# The name of this view in Looker is "Navigation Web"
view: navigation_web {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_entity.NAVIGATION_WEB` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Idclient Ens" in Explore.

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

  dimension: nb_session_events {
    type: number
    description: "compte le nombre de session auquel est attaché l'événement."
    sql: ${TABLE}.NB_SESSION_EVENTS ;;
  }

  dimension: nbr_pages_consulted {
    type: number
    description: "Nombre de pages consultées"
    sql: ${TABLE}.NBR_PAGES_CONSULTED ;;
  }

  dimension: pm_matching {
    type: string
    description: "Libellé de la méthode de profile matching ( par exemple 1st logged)"
    sql: ${TABLE}.PM_MATCHING ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: session {
    type: time
    description: "Date de la session"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.SESSION_DATE ;;
  }

  dimension: session_duration {
    type: number
    description: "Durée de la session en seconde."
    sql: ${TABLE}.SESSION_DURATION ;;
  }

  dimension: session_id {
    type: string
    description: "#PK - Identifiant de la session auquel est attaché l'événement.Une session est créée si la page est rechargé après plus de 30 minutes d’inactivité ou si un nouvel onglet est ouvert ou si le navigateur à été fermé et réouvert."
    sql: ${TABLE}.SESSION_ID ;;
  }

  dimension: session_type {
    type: string
    description: "Le type de la session, pour l’instant une seule valeur remonte “SITE_VISITE“."
    sql: ${TABLE}.SESSION_TYPE ;;
  }

  dimension: source_user {
    type: string
    description: "Contient des informations lié à l’authentification du client coté MICS"
    sql: ${TABLE}.SOURCE_USER ;;
  }

  dimension: used_browser {
    type: string
    description: "Navigateur utilisé par le client."
    sql: ${TABLE}.USED_BROWSER ;;
  }

  dimension: used_device {
    type: string
    description: "Libellé indiquant le périphérique utilisé lors de la navigation."
    sql: ${TABLE}.USED_DEVICE ;;
  }

  dimension: vector_id {
    type: string
    description: "Identifiant client coté MICS."
    sql: ${TABLE}.VECTOR_ID ;;
  }

  dimension: year_month {
    type: number
    description: "Concaténation de l’année et du mois se trouvant dans la colonne DATE_TICKET, fournie par l’enseigne. Si la date du ticket change alors cette valeur change."
    sql: ${TABLE}.YEAR_MONTH ;;
  }
  measure: count {
    type: count
  }
}
