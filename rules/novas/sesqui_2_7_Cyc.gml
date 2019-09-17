# 2-7 closure rule 
# Last review in March, 11, 2018 by Waldeyr Mendes Cordeiro da Silva
# It works for intermediate cations with C7+
# from Steele, C. L., Crock, J., Bohlmann, J., & Croteau, R. (1998). Sesquiterpene synthases from grand fir (Abies grandis) comparison of constitutive and wound-induced activities, and cDNA isolation, characterization, and bacterial expression of δ-selinene synthase and γ-humulene synthase. Journal of Biological Chemistry, 273(4), 2078-2089.

rule [
 ruleID "2-7 closure"
 left [
  node [ id  7 label "C+"]
  node [ id  3 label "C" ]
  edge [ source  2 target  3 label "=" ]
 ]
 context [
  node [ id  1 label "C" ]
  node [ id  2 label "C" ]
  node [ id  4 label "C" ]
  node [ id  5 label "C" ]
  node [ id  6 label "C" ]
  node [ id  8 label "C" ]
  edge [ source  1  target  2 label "-" ] 
  edge [ source  3  target  4 label "-" ]
  edge [ source  4  target  5 label "*" ]
  edge [ source  5  target  6 label "*" ]
  edge [ source  6  target  7 label "-" ]
  edge [ source  7  target  8 label "-" ]
 ]
 right [
  node [ id 7 label "C" ]
  node [ id  3 label "C+" ]
  edge [ source  2 target 3 label "-" ]
  edge [ source  2 target 7 label "-" ]
 ]
]