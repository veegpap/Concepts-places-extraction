# Concepts-places-extraction


The application was developed to explore spatial concept extraction from unstructured text. It was built using shiny and R.

The app is up and running at this link : https://veegee.shinyapps.io/new_txt_app_2/ 

The extraction process was tested on 11 articles from various internet sources (list included inside relevant folders) and 26 subsections from the first chapter of the book "World Regional Geography, People, Places and Globalization" available here https://open.lib.umn.edu/worldgeography/#main .

The annotation process was carried out using Stanford CoreNLP 4.2.0 jar files through the CRAN package "coreNLP". Texts converted to character vectors of length one via CRAN package "readr". The overall annotation process involves the use of the R packages "rJava" and "NLP". Ready to use annotation objects as well as tables with data from each text can be found inside relevant folders as .RData objects.

Folder "GEOTHNK network" includes a directed graph of spatial concepts alongside a visualization example through the package "visNetwork".

Folder "Extraction process" includes a minimum working R process in order to detect and extract spatial concepts from each text.

Session info :
R version 4.0.5 (2021-03-31)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Ubuntu 20.04.2 LTS
