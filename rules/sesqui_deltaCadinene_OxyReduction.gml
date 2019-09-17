# 1delta-cadinene oxyreduction
# Last review: March, 11, 2018 by Waldeyr Mendes Cordeiro da Silva
# Townsend, B. J. (2005). Antisense Suppression of a (+)- -Cadinene Synthase Gene in Cotton Prevents the Induction of This Defense Response Gene during Bacterial Blight Infection But Not Its Constitutive Expression. Plant Physiology, 138(1), 516–528. https://doi.org/10.1104/pp.104.056010
# Bohlmann, F. (1980). Uber die Inhaltsstoffe von. Organische Chemie, 2423(1976), 2410–2423.

rule [
 ruleID "delta-cadinene oxyreduction"
 left [
   edge [ source  4 target  5 label "-" ]
   edge [ source  8 target  9 label "-" ]
   edge [ source  1 target 10 label "-" ]
 ]
 context [
  node [ id  1 label "C" ]
  node [ id  2 label "C" ]
  node [ id  3 label "C" ]
  node [ id  4 label "*" ]
  node [ id  5 label "*" ]
  node [ id  6 label "C" ]
  node [ id  7 label "C" ]
  node [ id  8 label "C" ]
  node [ id  9 label "C" ]
  node [ id 10 label "C" ]
  node [ id 11 label "C" ]
  node [ id 12 label "C" ]
  node [ id 13 label "C" ]
  node [ id 14 label "C" ]
  node [ id 15 label "C" ]
  edge [ source  1 target  2 label "-" ]
  edge [ source  2 target  3 label "=" ]
  edge [ source  3 target  4 label "-" ]
  edge [ source  5 target  6 label "-" ]
  edge [ source  6 target  7 label "=" ]
  edge [ source  7 target  8 label "-" ]
  edge [ source  9 target 10 label "-" ]
  edge [ source 10 target 11 label "-" ]
  edge [ source 11 target 12 label "-" ]
  edge [ source 11 target 13 label "-" ]
  edge [ source  3 target 15 label "-" ]
  edge [ source  7 target 14 label "-" ]
  edge [ source  1 target  6 label "-" ]
 ]
 right [
   edge [ source  4 target  5 label "=" ]
   edge [ source  8 target  9 label "=" ]
   edge [ source  1 target 10 label "=" ]
 ]
]
