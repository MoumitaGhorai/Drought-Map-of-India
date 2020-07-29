# Drought map of India using R

Rainfall data and definition of 'drought'

The rainfall data is collected from the University of Delaware (Willmott and Matsuura, 2001). This dataset is a 0.5 x 0.5-degree latitude-longitude gridded global monthly rainfall data. Using the latitude and longitude information, I match the weather station closest to the centroid of the district and the district’s rainfall is defined by the grid point that is closest to the centroid3. Due to its complex nature, drought is quite difficult to measure and define. It is common to define drought in the four following ways:


1. Meteorological drought, which is defined as a dry period due to lack of rainfall.
2. Agricultural drought, which is defined as the amount of moisture in the soil that does not meet the needs of a crop.
3. Hydrological drought, which is defined as precipitation shortage that results in water shortage on surface and sub-surface.
4. Socio-economic drought, which is defined as excess demand due to a shortage of supply of economics goods due to water shortages (NOAA, 2019).

Different researchers follow different definitions of drought depending upon the purpose of the study. Since drought conditions also vary across the region, different countries define drought as per their rainfall pattern. Therefore, a standardized definition of drought cannot be developed. For this study, I define drought as a rainfall deficit from the normal rainfall for a prolonged period that adversely affects human activities in each region.

Specifically, I follow the Indian Meteorological Department (IMD) definition of a drought. The IMD announces a “drought year” as a year in which monsoon rainfall, the rain between June and September, falls below 75% of its long-term average value, i.e. when the monsoon rainfall deficit exceeds 25%. I calculated a long-term average of 25 years using the monthly rainfall data for each district.

