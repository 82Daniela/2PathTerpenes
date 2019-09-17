# 2-10 closure rule
# Last review: March, 11, 2018 by Waldeyr Mendes Cordeiro da Silva
# from Kempinski_2015.pdf, Biosynthesis and Biological Functions of Terpenoids in Plants, Figure 3b

rule [
 ruleID "2-10 closure"
 left [
  node [ id 10 label "C+"]
  edge [ source  2 target  3 label "=" ]
  node [ id  3 label "C" ]
 ]
 context [
  node [ id  1 label "C" ]
  node [ id  2 label "C" ]

  node [ id  4 label "C" ]
  node [ id  5 label "C" ]
  node [ id  6 label "C" ]
  node [ id  7 label "C" ]
  node [ id  8 label "C" ]
  node [ id  9 label "C" ]
  node [ id 11 label "C" ]
  node [ id 12 label "C" ]
  node [ id 13 label "C" ]
  edge [ source  1 target  2 label "-" ]
  edge [ source  1 target 11 label "-" ]
  edge [ source  3 target  4 label "-" ]
  edge [ source  4 target  5 label "*" ]
  edge [ source  5 target  6 label "*" ]
  edge [ source  6 target  7 label "=" ]
  edge [ source  7 target  8 label "-" ]
  edge [ source  8 target  9 label "*" ]
  edge [ source  9 target 10 label "-" ]
  edge [ source 10 target 11 label "-" ]
  edge [ source 11 target 12 label "*" ]
  edge [ source 11 target 13 label "*" ]
 ]
 right [
  node [ id 10 label "C"]
  edge [ source  2 target  3 label "-" ]
  node [ id  3 label "C+" ]
  edge [ source  2 target 10 label "-" ]
 ]
]
