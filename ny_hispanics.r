library(leaflet)
library(stringr)
library(sf)
library(tidyverse)
library(tidycensus)

ny_hips <- get_acs(geography = "county", 
                     variables = "B01003_001", 
                     state = "TX",
                     geometry = TRUE) 

					 

pal <- colorQuantile(palette = "viridis", domain = ny_hips$estimate, n = 10)

ny_hips %>%
    st_transform(crs = "+init=epsg:4326") %>%
    leaflet(width = "100%") %>%
    addProviderTiles(provider = "CartoDB.Positron") %>%
    addPolygons(popup = ~ str_extract(NAME, "^([^,]*)"),
                stroke = FALSE,
                smoothFactor = 0,
                fillOpacity = 0.7,
                color = ~ pal(estimate)) %>%
    addLegend("bottomright", 
              pal = pal, 
              values = ~ estimate,
              title = "Population percentiles",
              opacity = 1)