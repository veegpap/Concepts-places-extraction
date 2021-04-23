# Concepts-places-extraction


The application was developed to explore spatial concept extraction from unstructured text. It was built using shiny and R. Spatial concepts are organized as a directed graph.

The app is up and running at this link : https://veegee.shinyapps.io/new_txt_app_2/ 

The extraction process was tested on 11 articles from various internet sources (list included inside relevant folders) and 26 subsections from the first chapter of the book "World Regional Geography, People, Places and Globalization" available here https://open.lib.umn.edu/worldgeography/#main .

The annotation process was carried out using Stanford CoreNLP 4.2.0 jar files through the CRAN package "coreNLP". Texts converted to character vectors of length one via CRAN package "readr". The overall annotation process involves the use of the R packages "rJava" and "NLP". A ready to use annotation object can be found in the file annotation_example.RData object.

Folder "GEOTHNK network" includes a directed graph of spatial concepts alongside a visualization example through the package "visNetwork".

File "Extraction process.R" includes a minimum working R process in order to detect and extract GEOTHNK network spatial concepts from each text.

The process is based on the following packages : <br/>
 -  R Core Team (2021). R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. URL https://www.R-project.org/. <br/>
 - Hadley Wickham and Jim Hester (2020). readr: Read Rectangular Text Data. R package version 1.4.0. https://CRAN.R-project.org/package=readr <br/>
 - Taylor Arnold and Lauren Tilton (2016). coreNLP: Wrappers Around Stanford CoreNLP Tools. R package version 0.4-2. https://CRAN.R-project.org/package=coreNLP <br/>
 - Simon Urbanek (2020). rJava: Low-Level R to Java Interface. R package version 0.9-13. https://CRAN.R-project.org/package=rJava <br/>
 - Kurt Hornik (2020). NLP: Natural Language Processing Infrastructure. R package version 0.2-1. https://CRAN.R-project.org/package=NLP <br/>
 - Jan Wijffels (2020). textrank: Summarize Text by Ranking Sentences and Finding Keywords. R package version 0.3.1. https://CRAN.R-project.org/package=textrank <br/>
 - Hadley Wickham, Romain François, Lionel Henry and Kirill Müller (2021). dplyr: A Grammar of Data Manipulation. R package version 1.0.5. https://CRAN.R-project.org/package=dplyr <br/>
 - Hadley Wickham (2019). stringr: Simple, Consistent Wrappers for Common String Operations. R package version 1.4.0. https://CRAN.R-project.org/package=stringr <br/>
 - Jan Wijffels (2020). udpipe: Tokenization, Parts of Speech Tagging, Lemmatization and Dependency Parsing with the 'UDPipe' 'NLP' Toolkit. R package version 0.8.5. https://CRAN.R-project.org/package=udpipe <br/>


Session info :<br/>
R version 4.0.5 (2021-03-31)<br/>
Platform: x86_64-pc-linux-gnu (64-bit)<br/>
Running under: Ubuntu 20.04.2 LTS<br/>
