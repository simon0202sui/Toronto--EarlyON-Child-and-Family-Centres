library(opendatatoronto)
library(dplyr)
library(readr)

resources <- list_package_resources("9fcff3e1-3737-43cf-b410-05acd615e27b")
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))
data <- filter(datastore_resources, row_number() == 1) %>% get_resource()
head(data)
write_csv(x = data, file = "inputs/data/unedited_data.csv")

