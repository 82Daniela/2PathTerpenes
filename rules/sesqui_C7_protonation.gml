#   Germacrenes H+ gain
#   According to Alexandros L. Zografos in his book "From Biosynthesis to Total Synthesis: Strategies and Tactics for Natural Products", germacrenes can be further excited in their cationic form enzymic protonation to create a new series of cationic cores
#   Christianson, D. W. (2017). Structural and Chemical Biology of Terpenoid Cyclases. Chemical Reviews, 117(17), 11570–11648. Figure 65.
#   Robinson, J. A. (2018). Biosynthesis of Natural Products - Terpenes. Lectures notes in Organic Chemistry. Zurich. Avaiable at http://www.chem.uzh.ch/robinson/lectures/OC_V/
#   Steele, C. L., Crock, J., Bohlmann, J., & Croteau, R. (1998). Sesquiterpene synthases from grand fir (Abies grandis) comparison of constitutive and wound-induced activities, and cDNA isolation, characterization, and bacterial expression of δ-selinene synthase and γ-humulene synthase. Journal of Biological Chemistry, 273(4), 2078-2089.
#   Last review in April, 23, 2018 by Waldeyr Mendes Cordeiro da Silva

rule [
    ruleID "Germacrenes Reprotonation (C7)"
    left [
        node [ id  7 label "C" ]
        edge [ source  6 target  7 label "=" ]
    ]
    context [
        node [ id  1 label "C" ]
        node [ id  2 label "C" ]
        node [ id  3 label "C" ]
        node [ id  4 label "C" ]
        node [ id  5 label "C" ]
        node [ id  6 label "C" ]
        node [ id  8 label "C" ]
        node [ id  9 label "C" ]
        node [ id 10 label "C" ]
        node [ id 11 label "C" ]
        node [ id 12 label "C" ]
        node [ id 13 label "C" ]
        node [ id 14 label "C" ]
        node [ id 15 label "C" ]
        edge [ source  1 target  2 label "*" ]
        edge [ source  2 target  3 label "*" ]
        edge [ source  3 target  4 label "*" ]
        edge [ source  3 target 15 label "*" ]
        edge [ source  4 target  5 label "*" ]
        edge [ source  5 target  6 label "*" ]
        edge [ source  7 target  8 label "*" ]
        edge [ source  7 target 14 label "*" ]
        edge [ source  8 target  9 label "*" ]
        edge [ source  9 target 10 label "*" ]
        edge [ source 10 target 11 label "*" ]
        edge [ source 10 target  1 label "*" ]
        edge [ source 11 target 12 label "*" ]
        edge [ source 11 target 13 label "*" ]
    ]
    right [
        node [ id  7 label "C+" ]
        edge [ source  6 target  7 label "-" ]
    ]
]