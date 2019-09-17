# 2-6 closure rule
# Deguerry, F., Pastore, L., Wu, S., Clark, A., Chappell, J., & Schalk, M. (2006). The diverse sesquiterpene profile of patchouli, Pogostemon cablin, is correlated with a limited number of sesquiterpene synthases. Archives of Biochemistry and Biophysics, 454(2), 123–136. https://doi.org/10.1016/j.abb.2006.08.006

rule [
 ruleID "2-6 closure"
 left [
  node [ id  6 label "C+"]
  node [ id  3 label "C" ]
  edge [ source  2 target  3 label "=" ]
 ]
 context [
  node [ id  1 label "C" ]
  node [ id  2 label "C" ]
  node [ id  4 label "C" ]
  node [ id  5 label "C" ]
  node [ id  7 label "C" ]
  node [ id  8 label "C" ]
  edge [ source  1  target  2 label "-" ] 
  edge [ source  3  target  4 label "-" ]
  edge [ source  4  target  5 label "*" ]
  edge [ source  5  target  6 label "*" ]
  edge [ source  6  target  7 label "-" ]
  edge [ source  7  target  8 label "-" ]
 ]
 right [
  node [ id  6 label "C" ]
  node [ id  3 label "C+" ]
  edge [ source  2 target 3 label "-" ]
  edge [ source  2 target 6 label "-" ]
 ]
]