# Define the database connection to be used for this model.
connection: "hackathon_valiuz_bq_connection"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: hackathon_valiuz_bq_connection_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: hackathon_valiuz_bq_connection_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Hackathon Valiuz Bq Connection"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: electriques_collectes {}

explore: openfoodfacts_products {
}

explore: base_carbone_clean {
  label: "Opendata base carbone"
}

explore: agribalyse {
  label: "Opendata agribalyse"
}

explore: quantites_marche {}

explore: que_faire_dechets {}

explore: textiles_collectes {}

explore: current_weather {}

explore: poste_estocade {}


### VALIUZ ENTITY ###
explore: navigation_web {}

explore: navigation_web_detailled {}

explore: profiles {}

explore: product_nomenclature {}

explore: scores {}

explore: sites {}

explore: tickets {}

explore: tickets_detailled {}

explore: tickets_detailled_unidentified {}

explore: tickets_unidentified {}


### VALIUZ OPENDATA ###

explore: ca {}

explore: b2_b_n1_lib_naf {}

explore: b2_b_n2_lib_naf {}

explore: b2_b_n4_lib_naf {}

explore: b2_b_n3_lib_naf {}

explore: b2_b_nomenclature_naf {}

explore: b2_b_n5_lib_naf {}

explore: b2_b_nomenclature_categorie_juridique {}

explore: ca_2020 {}

explore: insee_carreau_natural_level_2019 {}

explore: deces {}

explore: forecast {}

explore: ichnaea_products {
    join: ichnaea_products__categories__list {
      view_label: "Ichnaea Products: Categories List"
      sql: LEFT JOIN UNNEST(${ichnaea_products.categories__list}) as ichnaea_products__categories__list ;;
      relationship: one_to_many
    }
    join: ichnaea_products__breadcrumblist__list {
      view_label: "Ichnaea Products: Breadcrumblist List"
      sql: LEFT JOIN UNNEST(${ichnaea_products.breadcrumblist__list}) as ichnaea_products__breadcrumblist__list ;;
      relationship: one_to_many
    }
    join: ichnaea_products__originalimageurls__list {
      view_label: "Ichnaea Products: Originalimageurls List"
      sql: LEFT JOIN UNNEST(${ichnaea_products.originalimageurls__list}) as ichnaea_products__originalimageurls__list ;;
      relationship: one_to_many
    }
    join: ichnaea_products__uploadedimagepaths__list {
      view_label: "Ichnaea Products: Uploadedimagepaths List"
      sql: LEFT JOIN UNNEST(${ichnaea_products.uploadedimagepaths__list}) as ichnaea_products__uploadedimagepaths__list ;;
      relationship: one_to_many
    }
}

explore: first_names {}

explore: insee_carreau_1_km_2019 {}

explore: insee_carreau_200_m_2019_v2 {}

explore: insee_firstname {}

explore: insee_iris_geo_area_supra_2019 {}

explore: insee_iris_geo_nesting_2019 {}

explore: insee_siret_stock_establishment_inheritance {}

explore: insee_population {}

explore: member_family_car {}

explore: insee_rectangle_2016 {}

explore: siren_establishment {}

explore: last_names {}

explore: siren_legal_unit {}

explore: global_air_quality {}

explore: siren_establishment_succession {}

explore: siren_establishment_history {}

explore: siren_legal_unit_history {}

explore: weather_history {}

explore: square_cst_segment {}
