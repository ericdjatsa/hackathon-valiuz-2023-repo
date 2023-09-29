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

### OPEN DATA ###

explore: electriques_collectes {
  group_label: "Open Data"
  label: "Opendata équipements électriques et électroniques collectés"
  description: "Le jeu de données présente les tonnages pris en charge depuis 2018 par la filière des Equipements électriques et électroniques (EEE), issues de SYDEREP, par département, région, par origine, par flux et par année."
}

explore: openfoodfacts_products {
  group_label: "Open Data"
  description: "Open Food Facts est une base de données de produits alimentaires faite par tout le monde, pour tout le monde."
}

explore: base_carbone_clean {
  group_label: "Open Data"
  label: "Opendata base carbone"
  description: "La Base Carbone® est une base de données publique de facteurs d'émissions, nécessaires à la réalisation d’un bilan d’émissions de gaz à effet de serre (GES) et plus généralement tout exercice de comptabilité carbone."
}

explore: agribalyse {
  group_label: "Open Data"
  label: "Opendata agribalyse (ADEME)"
  description: "AGRIBALYSE® est une base de données de référence des indicateurs d'impacts environnementaux des produits agricoles produits en France et des produits alimentaires consommés en France."
}

explore: quantites_marche {
  group_label: "Open Data"
}

explore: que_faire_dechets {
  group_label: "Open Data"
}

explore: textiles_collectes {
  group_label: "Open Data"
}

### VALIUZ CLOSED DATA ###

explore: current_weather {
  group_label: "Valiuz Closed Data"
}

explore: poste_estocade {
  group_label: "Valiuz Closed Data"
}


### VALIUZ ENTITY ###
explore: navigation_web {
  group_label: "Valiuz Entity"

}

explore: navigation_web_detailled {
  group_label: "Valiuz Entity"

}

explore: profiles {
  group_label: "Valiuz Entity"

}

explore: product_nomenclature {
  group_label: "Valiuz Entity"

}

explore: scores {
  group_label: "Valiuz Entity"

}

explore: sites {
  group_label: "Valiuz Entity"

}

explore: tickets {
  group_label: "Valiuz Entity"

}

explore: tickets_detailled {
  group_label: "Valiuz Entity"

}

explore: tickets_detailled_unidentified {
  group_label: "Valiuz Entity"

}

explore: tickets_unidentified {
  group_label: "Valiuz Entity"

}


### VALIUZ OPENDATA ###

# explore: ca {}

# explore: b2_b_n1_lib_naf {}

# explore: b2_b_n2_lib_naf {}

# explore: b2_b_n4_lib_naf {}

# explore: b2_b_n3_lib_naf {}

# explore: b2_b_nomenclature_naf {}

# explore: b2_b_n5_lib_naf {}

# explore: b2_b_nomenclature_categorie_juridique {}

# explore: ca_2020 {}

# explore: insee_carreau_natural_level_2019 {}

# explore: deces {}

# explore: forecast {}

# explore: ichnaea_products {
#     join: ichnaea_products__categories__list {
#       view_label: "Ichnaea Products: Categories List"
#       sql: LEFT JOIN UNNEST(${ichnaea_products.categories__list}) as ichnaea_products__categories__list ;;
#       relationship: one_to_many
#     }
#     join: ichnaea_products__breadcrumblist__list {
#       view_label: "Ichnaea Products: Breadcrumblist List"
#       sql: LEFT JOIN UNNEST(${ichnaea_products.breadcrumblist__list}) as ichnaea_products__breadcrumblist__list ;;
#       relationship: one_to_many
#     }
#     join: ichnaea_products__originalimageurls__list {
#       view_label: "Ichnaea Products: Originalimageurls List"
#       sql: LEFT JOIN UNNEST(${ichnaea_products.originalimageurls__list}) as ichnaea_products__originalimageurls__list ;;
#       relationship: one_to_many
#     }
#     join: ichnaea_products__uploadedimagepaths__list {
#       view_label: "Ichnaea Products: Uploadedimagepaths List"
#       sql: LEFT JOIN UNNEST(${ichnaea_products.uploadedimagepaths__list}) as ichnaea_products__uploadedimagepaths__list ;;
#       relationship: one_to_many
#     }
# }

# explore: first_names {}

explore: insee_carreau_1_km_2019 {
  group_label: "Valiuz Open Data"

}

explore: insee_carreau_200_m_2019_v2 {
  group_label: "Valiuz Open Data"

}

# explore: insee_firstname {}

explore: insee_iris_geo_area_supra_2019 {
  group_label: "Valiuz Open Data"

}

explore: insee_iris_geo_nesting_2019 {
  group_label: "Valiuz Open Data"

}

explore: insee_siret_stock_establishment_inheritance {
  group_label: "Valiuz Open Data"

}

explore: insee_population {
  group_label: "Valiuz Open Data"

}

explore: member_family_car {
  group_label: "Valiuz Open Data"

}

explore: insee_rectangle_2016 {
  group_label: "Valiuz Open Data"

}

explore: siren_establishment {
  group_label: "Valiuz Open Data"

}

# explore: last_names {}

explore: siren_legal_unit {
  group_label: "Valiuz Open Data"

}

explore: global_air_quality {
  group_label: "Valiuz Open Data"

}

explore: siren_establishment_succession {
  group_label: "Valiuz Open Data"

}

explore: siren_establishment_history {
  group_label: "Valiuz Open Data"

}

explore: siren_legal_unit_history {
  group_label: "Valiuz Open Data"

}

explore: weather_history {
  group_label: "Valiuz Open Data"

}

explore: square_cst_segment {
  group_label: "Valiuz Open Data"

}
