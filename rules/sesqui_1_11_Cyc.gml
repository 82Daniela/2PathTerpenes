# 1-11 closure rule
# Last review: March, 11, 2018 by Waldeyr Mendes Cordeiro da Silva
# de Kraker JW, Franssen, M., de Groot, A., Konig, W., & Bouwmeester, H. (1998). (+)-Germacrene A biosynthesis . The committed step in the biosynthesis of bitter sesquiterpene lactones in chicory. Plant Physiology, 117(4), 1381–92. https://doi.org/10.1104/pp.117.4.1381
# Garms, S., Köllner, T. G., & Boland, W. (2010). A multiproduct terpene synthase from medicago truncatula generates cadalane sesquiterpenes via two different mechanisms. Journal of Organic Chemistry, 75(16), 5590–5600. https://doi.org/10.1021/jo100917c

rule [
 ruleID "1-11 Cyclization"
 left [
  node [ id 10 label "C" ] 
  node [ id  1 label "C+" ]
  edge [ source 10 target 11 label "=" ]  
 ]
 context [
  node [ id  2 label "C" ]
  node [ id  3 label "C" ]
  node [ id  4 label "*" ]
  node [ id  5 label "*" ]
  node [ id  6 label "C" ]
  node [ id  7 label "C" ]
  node [ id  8 label "C" ]
  node [ id  9 label "C" ]
  node [ id 11 label "C" ]
  node [ id 12 label "C" ]
  node [ id 13 label "C" ]
  node [ id 14 label "C" ]
  node [ id 15 label "C" ]
  edge [ source  1 target  2 label "-" ]
  edge [ source  2 target  3 label "=" ]
  edge [ source  3 target  4 label "-" ]
  edge [ source  4 target  5 label "-" ]
  edge [ source  5 target  6 label "-" ]
  edge [ source  6 target  7 label "=" ]
  edge [ source  7 target  8 label "-" ]
  edge [ source  8 target  9 label "-" ]
  edge [ source  9 target 10 label "-" ]
  edge [ source  3 target 15 label "*" ]
  edge [ source  7 target 14 label "*" ]
  edge [ source 11 target 12 label "-" ]
  edge [ source 11 target 13 label "-" ]

 ]
 right [
  node [ id   1 label "C" ]
  node [ id  10 label "C+" ]  
  edge [ source  1 target 11 label "-" ]
  edge [ source 10 target 11 label "-" ]  
 ]
]
