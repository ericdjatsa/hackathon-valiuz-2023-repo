# The name of this view in Looker is "Forecast"
view: forecast {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `valiuz_opendata.FORECAST` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "City Coord Lat" in Explore.

  dimension: city_coord_lat {
    type: number
    sql: ${TABLE}.CITY_COORD_LAT ;;
  }

  dimension: city_coord_lon {
    type: number
    sql: ${TABLE}.CITY_COORD_LON ;;
  }

  dimension: city_country {
    type: string
    sql: ${TABLE}.CITY_COUNTRY ;;
  }

  dimension: city_id {
    type: number
    sql: ${TABLE}.CITY_ID ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}.CITY_NAME ;;
  }

  dimension: city_population {
    type: number
    sql: ${TABLE}.CITY_POPULATION ;;
  }

  dimension: city_timezone {
    type: number
    sql: ${TABLE}.CITY_TIMEZONE ;;
  }

  dimension: clouds {
    type: number
    sql: ${TABLE}.CLOUDS ;;
  }

  dimension: cnt {
    type: number
    sql: ${TABLE}.CNT ;;
  }

  dimension: cod {
    type: number
    sql: ${TABLE}.COD ;;
  }

  dimension: code_iris {
    type: string
    sql: ${TABLE}.CODE_IRIS ;;
  }

  dimension: deg {
    type: number
    sql: ${TABLE}.DEG ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DT ;;
  }

  dimension: feels_like_day {
    type: number
    sql: ${TABLE}.FEELS_LIKE_DAY ;;
  }

  dimension: feels_like_eve {
    type: number
    sql: ${TABLE}.FEELS_LIKE_EVE ;;
  }

  dimension: feels_like_morn {
    type: number
    sql: ${TABLE}.FEELS_LIKE_MORN ;;
  }

  dimension: feels_like_night {
    type: number
    sql: ${TABLE}.FEELS_LIKE_NIGHT ;;
  }

  dimension: humidity {
    type: number
    sql: ${TABLE}.HUMIDITY ;;
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

  dimension: message {
    type: number
    sql: ${TABLE}.MESSAGE ;;
  }

  dimension: opendata_forecast_uid {
    type: string
    sql: ${TABLE}.OPENDATA_FORECAST_UID ;;
  }

  dimension: pop {
    type: number
    sql: ${TABLE}.POP ;;
  }

  dimension: pressure {
    type: number
    sql: ${TABLE}.PRESSURE ;;
  }

  dimension: rain {
    type: number
    sql: ${TABLE}.RAIN ;;
  }

  dimension_group: request {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.REQUEST_DATE ;;
  }

  dimension: snow {
    type: number
    sql: ${TABLE}.SNOW ;;
  }

  dimension: speed {
    type: number
    sql: ${TABLE}.SPEED ;;
  }

  dimension_group: sunrise {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.SUNRISE ;;
  }

  dimension_group: sunset {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.SUNSET ;;
  }

  dimension: temp_day {
    type: number
    sql: ${TABLE}.TEMP_DAY ;;
  }

  dimension: temp_eve {
    type: number
    sql: ${TABLE}.TEMP_EVE ;;
  }

  dimension: temp_max {
    type: number
    sql: ${TABLE}.TEMP_MAX ;;
  }

  dimension: temp_min {
    type: number
    sql: ${TABLE}.TEMP_MIN ;;
  }

  dimension: temp_morn {
    type: number
    sql: ${TABLE}.TEMP_MORN ;;
  }

  dimension: temp_night {
    type: number
    sql: ${TABLE}.TEMP_NIGHT ;;
  }

  dimension: weather_description {
    type: string
    sql: ${TABLE}.WEATHER_DESCRIPTION ;;
  }

  dimension: weather_icon {
    type: string
    sql: ${TABLE}.WEATHER_ICON ;;
  }

  dimension: weather_id {
    type: number
    sql: ${TABLE}.WEATHER_ID ;;
  }

  dimension: weather_main {
    type: string
    sql: ${TABLE}.WEATHER_MAIN ;;
  }
  measure: count {
    type: count
    drill_fields: [city_name]
  }
}
