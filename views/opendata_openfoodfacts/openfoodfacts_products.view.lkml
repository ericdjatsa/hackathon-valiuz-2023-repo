# The name of this view in Looker is "Openfoodfacts Products"
view: openfoodfacts_products {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `opendata_openfoodfacts.openfoodfacts_products` ;;
  drill_fields: [code]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: code {
    primary_key: yes
    type: number
    sql: ${TABLE}.code ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Abbreviated Product Name" in Explore.

  dimension: abbreviated_product_name {
    type: string
    sql: ${TABLE}.abbreviated_product_name ;;
  }

  dimension: added_salt_100g {
    type: string
    sql: ${TABLE}.added_salt_100g ;;
  }

  dimension: added_sugars_100g {
    type: number
    sql: ${TABLE}.added_sugars_100g ;;
  }

  dimension: additives {
    type: string
    sql: ${TABLE}.additives ;;
  }

  dimension: additives_en {
    type: string
    sql: ${TABLE}.additives_en ;;
  }

  dimension: additives_n {
    type: number
    sql: ${TABLE}.additives_n ;;
  }

  dimension: additives_tags {
    type: string
    sql: ${TABLE}.additives_tags ;;
  }

  dimension: alcohol_100g {
    type: number
    sql: ${TABLE}.alcohol_100g ;;
  }

  dimension: allergens {
    type: string
    sql: ${TABLE}.allergens ;;
  }

  dimension: allergens_en {
    type: string
    sql: ${TABLE}.allergens_en ;;
  }

  dimension: alpha_linolenic_acid_100g {
    type: number
    sql: ${TABLE}.alpha_linolenic_acid_100g ;;
  }

  dimension: arachidic_acid_100g {
    type: number
    sql: ${TABLE}.arachidic_acid_100g ;;
  }

  dimension: arachidonic_acid_100g {
    type: number
    sql: ${TABLE}.arachidonic_acid_100g ;;
  }

  dimension: behenic_acid_100g {
    type: string
    sql: ${TABLE}.behenic_acid_100g ;;
  }

  dimension: beta_carotene_100g {
    type: string
    sql: ${TABLE}.beta_carotene_100g ;;
  }

  dimension: beta_glucan_100g {
    type: string
    sql: ${TABLE}.beta_glucan_100g ;;
  }

  dimension: bicarbonate_100g {
    type: string
    sql: ${TABLE}.bicarbonate_100g ;;
  }

  dimension: biotin_100g {
    type: number
    sql: ${TABLE}.biotin_100g ;;
  }

  dimension: brand_owner {
    type: string
    sql: ${TABLE}.brand_owner ;;
  }

  dimension: brands {
    type: string
    sql: ${TABLE}.brands ;;
  }

  dimension: brands_tags {
    type: string
    sql: ${TABLE}.brands_tags ;;
  }

  dimension: butyric_acid_100g {
    type: string
    sql: ${TABLE}.butyric_acid_100g ;;
  }

  dimension: caffeine_100g {
    type: number
    sql: ${TABLE}.caffeine_100g ;;
  }

  dimension: calcium_100g {
    type: number
    sql: ${TABLE}.calcium_100g ;;
  }

  dimension: capric_acid_100g {
    type: string
    sql: ${TABLE}.capric_acid_100g ;;
  }

  dimension: caproic_acid_100g {
    type: string
    sql: ${TABLE}.caproic_acid_100g ;;
  }

  dimension: caprylic_acid_100g {
    type: string
    sql: ${TABLE}.caprylic_acid_100g ;;
  }

  dimension: carbohydrates_100g {
    type: number
    sql: ${TABLE}.carbohydrates_100g ;;
  }

  dimension: carbon_footprint_100g {
    type: string
    sql: ${TABLE}.carbon_footprint_100g ;;
  }

  dimension: carbon_footprint_from_meat_or_fish_100g {
    type: number
    sql: ${TABLE}.carbon_footprint_from_meat_or_fish_100g ;;
  }

  dimension: carnitine_100g {
    type: string
    sql: ${TABLE}.carnitine_100g ;;
  }

  dimension: casein_100g {
    type: string
    sql: ${TABLE}.casein_100g ;;
  }

  dimension: categories {
    type: string
    sql: ${TABLE}.categories ;;
  }

  dimension: categories_en {
    type: string
    sql: ${TABLE}.categories_en ;;
  }

  dimension: categories_tags {
    type: string
    sql: ${TABLE}.categories_tags ;;
  }

  dimension: cerotic_acid_100g {
    type: string
    sql: ${TABLE}.cerotic_acid_100g ;;
  }

  dimension: chloride_100g {
    type: number
    sql: ${TABLE}.chloride_100g ;;
  }

  dimension: chlorophyl_100g {
    type: string
    sql: ${TABLE}.chlorophyl_100g ;;
  }

  dimension: cholesterol_100g {
    type: number
    sql: ${TABLE}.cholesterol_100g ;;
  }

  dimension: choline_100g {
    type: string
    sql: ${TABLE}.choline_100g ;;
  }

  dimension: chromium_100g {
    type: number
    sql: ${TABLE}.chromium_100g ;;
  }

  dimension: cities {
    type: string
    sql: ${TABLE}.cities ;;
  }

  dimension: cities_tags {
    type: string
    sql: ${TABLE}.cities_tags ;;
  }

  dimension: cocoa_100g {
    type: number
    sql: ${TABLE}.cocoa_100g ;;
  }

  dimension: collagen_meat_protein_ratio_100g {
    type: string
    sql: ${TABLE}.collagen_meat_protein_ratio_100g ;;
  }

  dimension: completeness {
    type: number
    sql: ${TABLE}.completeness ;;
  }

  dimension: copper_100g {
    type: number
    sql: ${TABLE}.copper_100g ;;
  }

  dimension: countries {
    type: string
    sql: ${TABLE}.countries ;;
  }

  dimension: countries_en {
    type: string
    sql: ${TABLE}.countries_en ;;
  }

  dimension: countries_tags {
    type: string
    sql: ${TABLE}.countries_tags ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created_datetime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_datetime ;;
  }

  dimension: created_t {
    type: number
    sql: ${TABLE}.created_t ;;
  }

  dimension: creator {
    type: string
    sql: ${TABLE}.creator ;;
  }

  dimension: data_quality_errors_tags {
    type: string
    sql: ${TABLE}.data_quality_errors_tags ;;
  }

  dimension: dihomo_gamma_linolenic_acid_100g {
    type: string
    sql: ${TABLE}.dihomo_gamma_linolenic_acid_100g ;;
  }

  dimension: docosahexaenoic_acid_100g {
    type: string
    sql: ${TABLE}.docosahexaenoic_acid_100g ;;
  }

  dimension: ecoscore_grade {
    type: string
    sql: ${TABLE}.ecoscore_grade ;;
  }

  dimension: ecoscore_score {
    type: number
    sql: ${TABLE}.ecoscore_score ;;
  }

  dimension: eicosapentaenoic_acid_100g {
    type: string
    sql: ${TABLE}.eicosapentaenoic_acid_100g ;;
  }

  dimension: elaidic_acid_100g {
    type: string
    sql: ${TABLE}.elaidic_acid_100g ;;
  }

  dimension: emb_codes {
    type: string
    sql: ${TABLE}.emb_codes ;;
  }

  dimension: emb_codes_tags {
    type: string
    sql: ${TABLE}.emb_codes_tags ;;
  }

  dimension: energy_100g {
    type: number
    sql: ${TABLE}.energy_100g ;;
  }

  dimension: energy_from_fat_100g {
    type: number
    sql: ${TABLE}.energy_from_fat_100g ;;
  }

  dimension: energy_kcal_100g {
    type: number
    sql: ${TABLE}.energy_kcal_100g ;;
  }

  dimension: energy_kj_100g {
    type: number
    sql: ${TABLE}.energy_kj_100g ;;
  }

  dimension: erucic_acid_100g {
    type: string
    sql: ${TABLE}.erucic_acid_100g ;;
  }

  dimension: erythritol_100g {
    type: string
    sql: ${TABLE}.erythritol_100g ;;
  }

  dimension: fat_100g {
    type: number
    sql: ${TABLE}.fat_100g ;;
  }

  dimension: fiber_100g {
    type: number
    sql: ${TABLE}.fiber_100g ;;
  }

  dimension: first_packaging_code_geo {
    type: string
    sql: ${TABLE}.first_packaging_code_geo ;;
  }

  dimension: fluoride_100g {
    type: number
    sql: ${TABLE}.fluoride_100g ;;
  }

  dimension: folates_100g {
    type: number
    sql: ${TABLE}.folates_100g ;;
  }

  dimension: food_groups {
    type: string
    sql: ${TABLE}.food_groups ;;
  }

  dimension: food_groups_en {
    type: string
    sql: ${TABLE}.food_groups_en ;;
  }

  dimension: food_groups_tags {
    type: string
    sql: ${TABLE}.food_groups_tags ;;
  }

  dimension: fructose_100g {
    type: string
    sql: ${TABLE}.fructose_100g ;;
  }

  dimension: fruits_vegetables_nuts_100g {
    type: number
    sql: ${TABLE}.fruits_vegetables_nuts_100g ;;
  }

  dimension: fruits_vegetables_nuts_dried_100g {
    type: string
    sql: ${TABLE}.fruits_vegetables_nuts_dried_100g ;;
  }

  dimension: fruits_vegetables_nuts_estimate_100g {
    type: number
    sql: ${TABLE}.fruits_vegetables_nuts_estimate_100g ;;
  }

  dimension: fruits_vegetables_nuts_estimate_from_ingredients_100g {
    type: number
    sql: ${TABLE}.fruits_vegetables_nuts_estimate_from_ingredients_100g ;;
  }

  dimension: gamma_linolenic_acid_100g {
    type: number
    sql: ${TABLE}.gamma_linolenic_acid_100g ;;
  }

  dimension: generic_name {
    type: string
    sql: ${TABLE}.generic_name ;;
  }

  dimension: glucose_100g {
    type: string
    sql: ${TABLE}.glucose_100g ;;
  }

  dimension: glycemic_index_100g {
    type: string
    sql: ${TABLE}.glycemic_index_100g ;;
  }

  dimension: gondoic_acid_100g {
    type: string
    sql: ${TABLE}.gondoic_acid_100g ;;
  }

  dimension: image_ingredients_small_url {
    type: string
    sql: ${TABLE}.image_ingredients_small_url ;;
  }

  dimension: image_ingredients_url {
    type: string
    sql: ${TABLE}.image_ingredients_url ;;
  }

  dimension: image_nutrition_small_url {
    type: string
    sql: ${TABLE}.image_nutrition_small_url ;;
  }

  dimension: image_nutrition_url {
    type: string
    sql: ${TABLE}.image_nutrition_url ;;
  }

  dimension: image_small_url {
    type: string
    sql: ${TABLE}.image_small_url ;;
  }

  dimension: image_url {
    type: string
    sql: ${TABLE}.image_url ;;
  }

  dimension: ingredients_analysis_tags {
    type: string
    sql: ${TABLE}.ingredients_analysis_tags ;;
  }

  dimension: ingredients_tags {
    type: string
    sql: ${TABLE}.ingredients_tags ;;
  }

  dimension: ingredients_text {
    type: string
    sql: ${TABLE}.ingredients_text ;;
  }

  dimension: inositol_100g {
    type: string
    sql: ${TABLE}.inositol_100g ;;
  }

  dimension: insoluble_fiber_100g {
    type: number
    sql: ${TABLE}.insoluble_fiber_100g ;;
  }

  dimension: iodine_100g {
    type: number
    sql: ${TABLE}.iodine_100g ;;
  }

  dimension: iron_100g {
    type: number
    sql: ${TABLE}.iron_100g ;;
  }

  dimension: labels {
    type: string
    sql: ${TABLE}.labels ;;
  }

  dimension: labels_en {
    type: string
    sql: ${TABLE}.labels_en ;;
  }

  dimension: labels_tags {
    type: string
    sql: ${TABLE}.labels_tags ;;
  }

  dimension: lactose_100g {
    type: string
    sql: ${TABLE}.lactose_100g ;;
  }

  dimension_group: last_image_datetime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_image_datetime ;;
  }

  dimension: last_image_t {
    type: number
    sql: ${TABLE}.last_image_t ;;
  }

  dimension: last_modified_by {
    type: string
    sql: ${TABLE}.last_modified_by ;;
  }

  dimension_group: last_modified_datetime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_modified_datetime ;;
  }

  dimension: last_modified_t {
    type: number
    sql: ${TABLE}.last_modified_t ;;
  }

  dimension: lauric_acid_100g {
    type: string
    sql: ${TABLE}.lauric_acid_100g ;;
  }

  dimension: lignoceric_acid_100g {
    type: string
    sql: ${TABLE}.lignoceric_acid_100g ;;
  }

  dimension: linoleic_acid_100g {
    type: string
    sql: ${TABLE}.linoleic_acid_100g ;;
  }

  dimension: magnesium_100g {
    type: number
    sql: ${TABLE}.magnesium_100g ;;
  }

  dimension: main_category {
    type: string
    sql: ${TABLE}.main_category ;;
  }

  dimension: main_category_en {
    type: string
    sql: ${TABLE}.main_category_en ;;
  }

  dimension: maltodextrins_100g {
    type: string
    sql: ${TABLE}.maltodextrins_100g ;;
  }

  dimension: maltose_100g {
    type: string
    sql: ${TABLE}.maltose_100g ;;
  }

  dimension: manganese_100g {
    type: number
    sql: ${TABLE}.manganese_100g ;;
  }

  dimension: manufacturing_places {
    type: string
    sql: ${TABLE}.manufacturing_places ;;
  }

  dimension: manufacturing_places_tags {
    type: string
    sql: ${TABLE}.manufacturing_places_tags ;;
  }

  dimension: mead_acid_100g {
    type: string
    sql: ${TABLE}.mead_acid_100g ;;
  }

  dimension: melissic_acid_100g {
    type: string
    sql: ${TABLE}.melissic_acid_100g ;;
  }

  dimension: molybdenum_100g {
    type: number
    sql: ${TABLE}.molybdenum_100g ;;
  }

  dimension: monounsaturated_fat_100g {
    type: number
    sql: ${TABLE}.monounsaturated_fat_100g ;;
  }

  dimension: montanic_acid_100g {
    type: string
    sql: ${TABLE}.montanic_acid_100g ;;
  }

  dimension: myristic_acid_100g {
    type: string
    sql: ${TABLE}.myristic_acid_100g ;;
  }

  dimension: nervonic_acid_100g {
    type: string
    sql: ${TABLE}.nervonic_acid_100g ;;
  }

  dimension: nitrate_100g {
    type: number
    sql: ${TABLE}.nitrate_100g ;;
  }

  dimension: no_nutrition_data {
    type: string
    sql: ${TABLE}.no_nutrition_data ;;
  }

  dimension: nova_group {
    type: number
    sql: ${TABLE}.nova_group ;;
  }

  dimension: nucleotides_100g {
    type: string
    sql: ${TABLE}.nucleotides_100g ;;
  }

  dimension: nutrient_levels_tags {
    type: string
    sql: ${TABLE}.nutrient_levels_tags ;;
  }

  dimension: nutriscore_grade {
    type: string
    sql: ${TABLE}.nutriscore_grade ;;
  }

  dimension: nutriscore_score {
    type: number
    sql: ${TABLE}.nutriscore_score ;;
  }

  dimension: nutrition_score_fr_100g {
    type: number
    sql: ${TABLE}.nutrition_score_fr_100g ;;
  }

  dimension: nutrition_score_uk_100g {
    type: string
    sql: ${TABLE}.nutrition_score_uk_100g ;;
  }

  dimension: oleic_acid_100g {
    type: string
    sql: ${TABLE}.oleic_acid_100g ;;
  }

  dimension: omega_3_fat_100g {
    type: number
    sql: ${TABLE}.omega_3_fat_100g ;;
  }

  dimension: omega_6_fat_100g {
    type: number
    sql: ${TABLE}.omega_6_fat_100g ;;
  }

  dimension: omega_9_fat_100g {
    type: number
    sql: ${TABLE}.omega_9_fat_100g ;;
  }

  dimension: origins {
    type: string
    sql: ${TABLE}.origins ;;
  }

  dimension: origins_en {
    type: string
    sql: ${TABLE}.origins_en ;;
  }

  dimension: origins_tags {
    type: string
    sql: ${TABLE}.origins_tags ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.owner ;;
  }

  dimension: packaging {
    type: string
    sql: ${TABLE}.packaging ;;
  }

  dimension: packaging_en {
    type: string
    sql: ${TABLE}.packaging_en ;;
  }

  dimension: packaging_tags {
    type: string
    sql: ${TABLE}.packaging_tags ;;
  }

  dimension: packaging_text {
    type: string
    sql: ${TABLE}.packaging_text ;;
  }

  dimension: palmitic_acid_100g {
    type: string
    sql: ${TABLE}.palmitic_acid_100g ;;
  }

  dimension: pantothenic_acid_100g {
    type: number
    sql: ${TABLE}.pantothenic_acid_100g ;;
  }

  dimension: ph_100g {
    type: number
    sql: ${TABLE}.ph_100g ;;
  }

  dimension: phosphorus_100g {
    type: number
    sql: ${TABLE}.phosphorus_100g ;;
  }

  dimension: phylloquinone_100g {
    type: number
    sql: ${TABLE}.phylloquinone_100g ;;
  }

  dimension: pnns_groups_1 {
    type: string
    sql: ${TABLE}.pnns_groups_1 ;;
  }

  dimension: pnns_groups_2 {
    type: string
    sql: ${TABLE}.pnns_groups_2 ;;
  }

  dimension: polyols_100g {
    type: number
    sql: ${TABLE}.polyols_100g ;;
  }

  dimension: polyunsaturated_fat_100g {
    type: number
    sql: ${TABLE}.polyunsaturated_fat_100g ;;
  }

  dimension: popularity_tags {
    type: string
    sql: ${TABLE}.popularity_tags ;;
  }

  dimension: potassium_100g {
    type: number
    sql: ${TABLE}.potassium_100g ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: product_quantity {
    type: number
    sql: ${TABLE}.product_quantity ;;
  }

  dimension: proteins_100g {
    type: number
    sql: ${TABLE}.proteins_100g ;;
  }

  dimension: purchase_places {
    type: string
    sql: ${TABLE}.purchase_places ;;
  }

  dimension: quantity {
    type: string
    sql: ${TABLE}.quantity ;;
  }

  dimension: salt_100g {
    type: number
    sql: ${TABLE}.salt_100g ;;
  }

  dimension: saturated_fat_100g {
    type: number
    sql: ${TABLE}.saturated_fat_100g ;;
  }

  dimension: selenium_100g {
    type: number
    sql: ${TABLE}.selenium_100g ;;
  }

  dimension: serum_proteins_100g {
    type: string
    sql: ${TABLE}.serum_proteins_100g ;;
  }

  dimension: serving_quantity {
    type: number
    sql: ${TABLE}.serving_quantity ;;
  }

  dimension: serving_size {
    type: string
    sql: ${TABLE}.serving_size ;;
  }

  dimension: silica_100g {
    type: string
    sql: ${TABLE}.silica_100g ;;
  }

  dimension: sodium_100g {
    type: number
    sql: ${TABLE}.sodium_100g ;;
  }

  dimension: soluble_fiber_100g {
    type: number
    sql: ${TABLE}.soluble_fiber_100g ;;
  }

  dimension: starch_100g {
    type: number
    sql: ${TABLE}.starch_100g ;;
  }

  dimension: states {
    type: string
    sql: ${TABLE}.states ;;
  }

  dimension: states_en {
    type: string
    sql: ${TABLE}.states_en ;;
  }

  dimension: states_tags {
    type: string
    sql: ${TABLE}.states_tags ;;
  }

  dimension: stearic_acid_100g {
    type: string
    sql: ${TABLE}.stearic_acid_100g ;;
  }

  dimension: stores {
    type: string
    sql: ${TABLE}.stores ;;
  }

  dimension: sucrose_100g {
    type: string
    sql: ${TABLE}.sucrose_100g ;;
  }

  dimension: sugars_100g {
    type: number
    sql: ${TABLE}.sugars_100g ;;
  }

  dimension: sulphate_100g {
    type: number
    sql: ${TABLE}.sulphate_100g ;;
  }

  dimension: taurine_100g {
    type: string
    sql: ${TABLE}.taurine_100g ;;
  }

  dimension: traces {
    type: string
    sql: ${TABLE}.traces ;;
  }

  dimension: traces_en {
    type: string
    sql: ${TABLE}.traces_en ;;
  }

  dimension: traces_tags {
    type: string
    sql: ${TABLE}.traces_tags ;;
  }

  dimension: trans_fat_100g {
    type: number
    sql: ${TABLE}.trans_fat_100g ;;
  }

  dimension: unique_scans_n {
    type: number
    sql: ${TABLE}.unique_scans_n ;;
  }

  dimension: unsaturated_fat_100g {
    type: string
    sql: ${TABLE}.unsaturated_fat_100g ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: vitamin_a_100g {
    type: number
    sql: ${TABLE}.vitamin_a_100g ;;
  }

  dimension: vitamin_b12_100g {
    type: number
    sql: ${TABLE}.vitamin_b12_100g ;;
  }

  dimension: vitamin_b1_100g {
    type: number
    sql: ${TABLE}.vitamin_b1_100g ;;
  }

  dimension: vitamin_b2_100g {
    type: number
    sql: ${TABLE}.vitamin_b2_100g ;;
  }

  dimension: vitamin_b6_100g {
    type: number
    sql: ${TABLE}.vitamin_b6_100g ;;
  }

  dimension: vitamin_b9_100g {
    type: number
    sql: ${TABLE}.vitamin_b9_100g ;;
  }

  dimension: vitamin_c_100g {
    type: number
    sql: ${TABLE}.vitamin_c_100g ;;
  }

  dimension: vitamin_d_100g {
    type: number
    sql: ${TABLE}.vitamin_d_100g ;;
  }

  dimension: vitamin_e_100g {
    type: number
    sql: ${TABLE}.vitamin_e_100g ;;
  }

  dimension: vitamin_k_100g {
    type: number
    sql: ${TABLE}.vitamin_k_100g ;;
  }

  dimension: vitamin_pp_100g {
    type: number
    sql: ${TABLE}.vitamin_pp_100g ;;
  }

  dimension: water_hardness_100g {
    type: string
    sql: ${TABLE}.water_hardness_100g ;;
  }

  dimension: zinc_100g {
    type: number
    sql: ${TABLE}.zinc_100g ;;
  }
  measure: count {
    type: count
    drill_fields: [code, abbreviated_product_name, generic_name, product_name]
  }
}
