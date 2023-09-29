# The name of this view in Looker is "Weather History"
view: weather_history {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.WEATHER_HISTORY` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Clouds Max" in Explore.

  dimension: clouds_max {
    type: number
    sql: ${TABLE}.CLOUDS_MAX ;;
  }

  dimension: clouds_mean {
    type: number
    sql: ${TABLE}.CLOUDS_MEAN ;;
  }

  dimension: clouds_median {
    type: number
    sql: ${TABLE}.CLOUDS_MEDIAN ;;
  }

  dimension: clouds_min {
    type: number
    sql: ${TABLE}.CLOUDS_MIN ;;
  }

  dimension: clouds_num {
    type: number
    sql: ${TABLE}.CLOUDS_NUM ;;
  }

  dimension: clouds_p25 {
    type: number
    sql: ${TABLE}.CLOUDS_P25 ;;
  }

  dimension: clouds_p75 {
    type: number
    sql: ${TABLE}.CLOUDS_P75 ;;
  }

  dimension: clouds_st_dev {
    type: number
    sql: ${TABLE}.CLOUDS_ST_DEV ;;
  }

  dimension: code_iris {
    type: string
    sql: ${TABLE}.CODE_IRIS ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATE ;;
  }

  dimension: humidity_max {
    type: number
    sql: ${TABLE}.HUMIDITY_MAX ;;
  }

  dimension: humidity_mean {
    type: number
    sql: ${TABLE}.HUMIDITY_MEAN ;;
  }

  dimension: humidity_median {
    type: number
    sql: ${TABLE}.HUMIDITY_MEDIAN ;;
  }

  dimension: humidity_min {
    type: number
    sql: ${TABLE}.HUMIDITY_MIN ;;
  }

  dimension: humidity_num {
    type: number
    sql: ${TABLE}.HUMIDITY_NUM ;;
  }

  dimension: humidity_p25 {
    type: number
    sql: ${TABLE}.HUMIDITY_P25 ;;
  }

  dimension: humidity_p75 {
    type: number
    sql: ${TABLE}.HUMIDITY_P75 ;;
  }

  dimension: humidity_st_dev {
    type: number
    sql: ${TABLE}.HUMIDITY_ST_DEV ;;
  }

  dimension: insee_com {
    type: string
    sql: ${TABLE}.INSEE_COM ;;
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

  dimension: opendata_weather_history_uid {
    type: string
    sql: ${TABLE}.OPENDATA_WEATHER_HISTORY_UID ;;
  }

  dimension: precipitation_max {
    type: number
    sql: ${TABLE}.PRECIPITATION_MAX ;;
  }

  dimension: precipitation_mean {
    type: number
    sql: ${TABLE}.PRECIPITATION_MEAN ;;
  }

  dimension: precipitation_median {
    type: number
    sql: ${TABLE}.PRECIPITATION_MEDIAN ;;
  }

  dimension: precipitation_min {
    type: number
    sql: ${TABLE}.PRECIPITATION_MIN ;;
  }

  dimension: precipitation_num {
    type: number
    sql: ${TABLE}.PRECIPITATION_NUM ;;
  }

  dimension: precipitation_p25 {
    type: number
    sql: ${TABLE}.PRECIPITATION_P25 ;;
  }

  dimension: precipitation_p75 {
    type: number
    sql: ${TABLE}.PRECIPITATION_P75 ;;
  }

  dimension: precipitation_st_dev {
    type: number
    sql: ${TABLE}.PRECIPITATION_ST_DEV ;;
  }

  dimension: pressure_max {
    type: number
    sql: ${TABLE}.PRESSURE_MAX ;;
  }

  dimension: pressure_mean {
    type: number
    sql: ${TABLE}.PRESSURE_MEAN ;;
  }

  dimension: pressure_median {
    type: number
    sql: ${TABLE}.PRESSURE_MEDIAN ;;
  }

  dimension: pressure_min {
    type: number
    sql: ${TABLE}.PRESSURE_MIN ;;
  }

  dimension: pressure_num {
    type: number
    sql: ${TABLE}.PRESSURE_NUM ;;
  }

  dimension: pressure_p25 {
    type: number
    sql: ${TABLE}.PRESSURE_P25 ;;
  }

  dimension: pressure_p75 {
    type: number
    sql: ${TABLE}.PRESSURE_P75 ;;
  }

  dimension: pressure_st_dev {
    type: number
    sql: ${TABLE}.PRESSURE_ST_DEV ;;
  }

  dimension_group: request {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.REQUEST_DATE ;;
  }

  dimension: temp_average_max {
    type: number
    sql: ${TABLE}.TEMP_AVERAGE_MAX ;;
  }

  dimension: temp_average_min {
    type: number
    sql: ${TABLE}.TEMP_AVERAGE_MIN ;;
  }

  dimension: temp_mean {
    type: number
    sql: ${TABLE}.TEMP_MEAN ;;
  }

  dimension: temp_median {
    type: number
    sql: ${TABLE}.TEMP_MEDIAN ;;
  }

  dimension: temp_num {
    type: number
    sql: ${TABLE}.TEMP_NUM ;;
  }

  dimension: temp_p25 {
    type: number
    sql: ${TABLE}.TEMP_P25 ;;
  }

  dimension: temp_p75 {
    type: number
    sql: ${TABLE}.TEMP_P75 ;;
  }

  dimension: temp_record_max {
    type: number
    sql: ${TABLE}.TEMP_RECORD_MAX ;;
  }

  dimension: temp_record_min {
    type: number
    sql: ${TABLE}.TEMP_RECORD_MIN ;;
  }

  dimension: temp_st_dev {
    type: number
    sql: ${TABLE}.TEMP_ST_DEV ;;
  }

  dimension: wind_max {
    type: number
    sql: ${TABLE}.WIND_MAX ;;
  }

  dimension: wind_mean {
    type: number
    sql: ${TABLE}.WIND_MEAN ;;
  }

  dimension: wind_median {
    type: number
    sql: ${TABLE}.WIND_MEDIAN ;;
  }

  dimension: wind_min {
    type: number
    sql: ${TABLE}.WIND_MIN ;;
  }

  dimension: wind_num {
    type: number
    sql: ${TABLE}.WIND_NUM ;;
  }

  dimension: wind_p25 {
    type: number
    sql: ${TABLE}.WIND_P25 ;;
  }

  dimension: wind_p75 {
    type: number
    sql: ${TABLE}.WIND_P75 ;;
  }

  dimension: wind_st_dev {
    type: number
    sql: ${TABLE}.WIND_ST_DEV ;;
  }
  measure: count {
    type: count
  }
}
