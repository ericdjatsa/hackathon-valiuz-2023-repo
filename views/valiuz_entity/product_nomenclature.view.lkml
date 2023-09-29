# The name of this view in Looker is "Product Nomenclature"
view: product_nomenclature {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_entity.PRODUCT_NOMENCLATURE` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _partitiondate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Article Code" in Explore.

  dimension: article_code {
    type: string
    description: "Code de l'article, fourni par l'enseigne. Un article correspond en général à un produit, une taille et une couleur."
    sql: ${TABLE}.ARTICLE_CODE ;;
  }

  dimension: article_label {
    type: string
    description: "Libellé de l'article, fourni par l’enseigne."
    sql: ${TABLE}.ARTICLE_LABEL ;;
  }

  dimension: brand {
    type: string
    description: "Libellé de la marque du produit, fourni par l’enseigne."
    sql: ${TABLE}.BRAND ;;
  }

  dimension: brand_type {
    type: string
    description: "Libellé du type de marque, fourni par l’enseigne."
    sql: ${TABLE}.BRAND_TYPE ;;
  }

  dimension: department {
    type: string
    description: "Libellé du département associé au produit (sous catégorie de l'univers), fourni par l’enseigne."
    sql: ${TABLE}.DEPARTMENT ;;
  }

  dimension: member {
    type: string
    description: "Trigramme correspondant au nom de l'enseigne."
    sql: ${TABLE}.MEMBER ;;
  }

  dimension: product_code {
    type: string
    description: "Code produit, fourni par l’enseigne."
    sql: ${TABLE}.PRODUCT_CODE ;;
  }

  dimension: product_code_web {
    type: string
    description: "Nomenclature web du produit, fournie par l’enseigne."
    sql: ${TABLE}.PRODUCT_CODE_WEB ;;
  }

  dimension_group: product_end {
    type: time
    description: "Date de fin de commercialisation du produit, fournie par l’enseigne."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.PRODUCT_END_DATE ;;
  }

  dimension: product_family {
    type: string
    description: "Libellé de la famille de produit, fourni par l’enseigne."
    sql: ${TABLE}.PRODUCT_FAMILY ;;
  }

  dimension: product_level {
    type: string
    description: "Nomenclature du produit, fournie par l’enseigne."
    sql: ${TABLE}.PRODUCT_LEVEL ;;
  }

  dimension_group: product_start {
    type: time
    description: "Date de début de commercialisation du produit, fournie par l’enseigne."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.PRODUCT_START_DATE ;;
  }

  dimension: product_sub_family {
    type: string
    description: "Libellé de la sous catégorie de la famille du produit, fourni par l’enseigne."
    sql: ${TABLE}.PRODUCT_SUB_FAMILY ;;
  }

  dimension: product_uid {
    type: string
    description: "#PK - Identifiant unique d'un produit. Attention, pour le MEMBER='KIA', le product_id désigne une référence, et pas une référence-coloris-taille. Bug connu en cours de résolution côté enseigne."
    sql: ${TABLE}.PRODUCT_UID ;;
  }

  dimension: side_info {
    type: string
    description: "Informations complémentaires liées au produit, fournies par l’enseigne."
    sql: ${TABLE}.SIDE_INFO ;;
  }

  dimension: size {
    type: string
    description: "Taille du produit si le produit est un vêtement, fournie par l’enseigne."
    sql: ${TABLE}.SIZE ;;
  }

  dimension: sub_department {
    type: string
    description: "Libellé du sous département associé au produit (sous catégorie du département), fourni par l’enseigne."
    sql: ${TABLE}.SUB_DEPARTMENT ;;
  }

  dimension: supplier {
    type: string
    description: "Libellé du fournisseur, fourni par l’enseigne."
    sql: ${TABLE}.SUPPLIER ;;
  }

  dimension: universe {
    type: string
    description: "Libellé de l'univers associé au produit, fourni par l’enseigne."
    sql: ${TABLE}.UNIVERSE ;;
  }
  measure: count {
    type: count
  }
}
