# 1-6 closure rule 
# Last review: March, 11, 2018 by Waldeyr Mendes Cordeiro da Silva
# It works for cations with C1+ and C6=C7 head to tail
# From dickschat-NPR-2016.pdf scheme 4 reaction FPP -> C

rule [
 ruleID "1-6 closure"
 left [
  node [ id  6 label "C+" ]
  node [ id  7 label "C" ]
  edge [ source  6 target  7 label "=" ]  
 ]
 context [

  node [ id  2 label "C" ]
  node [ id  3 label "C" ]
  node [ id  4 label "*" ]
  node [ id  5 label "*" ]
  node [ id  8 label "C" ]
  node [ id  9 label "C" ]
  node [ id 14 label "C" ]
  node [ id 15 label "C" ]
  edge [ source  1 target  2 label "-" ]
  edge [ source  2 target  3 label "=" ]
  edge [ source  3 target  4 label "-" ]
  edge [ source  3 target 15 label "-" ]
  edge [ source  4 target  5 label "-" ]
  edge [ source  5 target  6 label "-" ]
  edge [ source  7 target  8 label "-" ]
  edge [ source  7 target 14 label "-" ]
  edge [ source  8 target  9 label "*" ]
 ]
 right [
  node [ id  1 label "C" ]
  node [ id  7 label "C+" ]
  edge [ source  6 target  7 label "-" ]
  edge [ source  1 target  6 label "-" ]
 ]
]
