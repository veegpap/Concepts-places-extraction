# Concepts-places-extraction


The application was developed to explore spatial concept extraction from unstructured text. It was built using shiny and R. Spatial concepts are organized as a directed graph.

The app is up and running at this link : https://veegee.shinyapps.io/new_txt_app_2/ 

The extraction process was tested on 11 articles from various internet sources (list included inside relevant folders) and 26 subsections from the first chapter of the book "World Regional Geography, People, Places and Globalization" available here https://open.lib.umn.edu/worldgeography/#main .

The annotation process was carried out using Stanford CoreNLP 4.2.0 jar files through the CRAN package "coreNLP". Texts converted to character vectors of length one via CRAN package "readr". The overall annotation process involves the use of the R packages "rJava" and "NLP". A ready to use annotation object can be found in the file annotation_example.RData object.

Folder "GEOTHNK network" includes a directed graph of spatial concepts alongside a visualization example through the package "visNetwork".

File "Extraction process.R" includes a minimum working R process in order to detect and extract GEOTHNK network spatial concepts from each text.

Session info :<br/>
R version 4.0.5 (2021-03-31)<br/>
Platform: x86_64-pc-linux-gnu (64-bit)<br/>
Running under: Ubuntu 20.04.2 LTS<br/>
