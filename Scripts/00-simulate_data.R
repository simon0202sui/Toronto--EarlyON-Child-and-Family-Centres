#### Preamble ####
# Purpose: Analysis of data on the number of red light cameras in toronto from 2007 to 2022
# Author: Pengyu Sui
# Email: pengyu.sui@mail.utoronto.ca
# Date: 21 Jan 2024
# Prerequisites: -

library(tibble)
red_light_camera_data <- tibble(
  year = rep(2007:2022, each = 3),
  location = rep(c("Richmond_street", "Lake_shore_Blvd", "Steeles_Ave"), times = 16),
  camera_count = round(runif(48, min = 5, max = 50))
)

# View the dataset
head(red_light_camera_data)


