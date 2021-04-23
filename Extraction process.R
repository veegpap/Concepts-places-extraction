
library(textrank)
library(dplyr)
library(stringr)
library(udpipe)

# located in Various_articles/R_data_articles_annotated/
load("annotation_example.RData")

# specify short negation of %in% 
`%nin%` = Negate(`%in%`)

# function to extract placenames of two word or more from the annotation object
nm.loc <- function(x) {
  locas1 <- subset(x , NER %in% c("COUNTRY", "CITY", "LOCATION"))
  locas1$rnm <- rownames(locas1)
  locas1$rnm <- as.numeric(locas1$rnm)
  difis <-  diff(locas1$rnm) == 1
  if (difis[1] == TRUE) 
  {
    g <- TRUE
  }else {
    g <- FALSE
  }
  ae <- c(difis, g)
  locas1$difis <-  ae
  locas1$difis <- as.character(locas1$difis)
  locas1$sep[locas1$difis == "TRUE"] <- " "
  locas1$sep[locas1$difis == "FALSE"] <- ","
  b <-  paste(locas1$token, locas1$sep, collapse = '' )
  s <- unlist(strsplit(b, ","))
  unique(s)
}

# extracted locations fron coreNLP Named Entity Regognition process from the article "The island of Aphrodite’s ancestors"
gsub(" ,", ", ", paste(nm.loc(annie_example), sep = ",", collapse = ","))

# detect the presence of certain names inside text. 
nodes <- c("island","geometry","equator","longitude","waterfall","time","capital","path","sea","beach","coastline","region","earthquake","line")

#nodes$name <- trimws(nodes$name, "both")
#cnspts <- tolower(nodes$name)
cnspts <- tolower(nodes)
cnspts <- unique(cnspts)
cnspts <- paste("\\b", cnspts, "\\b", sep = "")
my.textis <- annie_example
my.textis <- my.textis[my.textis$POS %nin% c("VB","VBD","VBG","VBN","VBP","VBZ","JJ","JJR","JJS"),]
my.textis <- paste(my.textis$lemma, sep = " ", collapse = " ")
my.textis <- gsub('[[:punct:] ]+'," ", my.textis)
cavav <- sapply(cnspts, gregexpr, my.textis)
hav <- unlist(cavav)
jkav <- data.frame(hav)
myDfav = data.frame(node = names(hav), indx = hav)
myfinDFav <- subset(myDfav, indx > 0)
myfinDFav$node <- gsub('[0-9]+', '', myfinDFav$node)
# remove first 2 and last 2 characters from all the words
myfinDFav$node <- gsub("^.{2}|.{2}$", "", myfinDFav$node)
myfinDFav <- myfinDFav[,1]
spitsaav <- myfinDFav %>% table
spitsaav <- as.data.frame(spitsaav)
colnames(spitsaav) <- c("node", "freq")
spitsaav


# extract keywords 
keyw <- textrank_keywords(annie_example$lemma,  relevant = annie_example$POS %in% c("JJ","JJR","JJS","NN","NNS","NNP","NNPS"), sep = " ", p = 1)
subset(keyw$keywords, ngram > 1 & freq > 1)

# extract noun phrases
annie_example$phrase_tag <- as_phrasemachine(annie_example$POS, type = "penn-treebank")
noun_phrases <- keywords_phrases(x = annie_example$phrase_tag, term = annie_example$token, 
                          pattern = "(A|N)+N(P+D*(A|N)*N)*",        # Simple noun phrases (a adjective+noun, pre/postposition, optional determiner and another adjective+noun)
                          is_regex = TRUE, ngram_max = 4, detailed = FALSE)
subset(noun_phrases, ngram > 1 & freq > 1)


