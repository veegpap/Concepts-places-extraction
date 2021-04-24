library(visNetwork)

load("ontology_example.RData")

visNetwork(nodes_example, links_example) %>%
  visOptions(highlightNearest = TRUE ) %>% 
  visEdges(shadow = TRUE, 
           arrows = list(to = list(enabled = TRUE, scaleFactor = 0.5)),
           color = list(highlight = "red")) 
