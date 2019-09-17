#   2-6 closure for Germacrenoids
#   #   Kumeta, Y., & Ito, M. (2010). Characterization of  -Guaiene Synthases from Cultured Cells of Aquilaria, Responsible for the Formation of the Sesquiterpenes in Agarwood. Plant Physiology, 154(4), 1998–2007. https://doi.org/10.1104/pp.110.161828
#Steele, C. L., Crock, J., Bohlmann, J., & Croteau, R. (1998). Sesquiterpene synthases from grand fir (Abies grandis): Comparison of constitutive and wound-induced activities, and cDNA isolation, characterization, and bacterial expression of δ-selinene synthase and γ- humulene synthase. Journal of Biological Chemistry, 273(4), 2078–2089. https://doi.org/10.1074/jbc.273.4.2078

rule [
    ruleID "2-6 closure for Germacrenoids"
    left [
        edge [ source  6 target  7 label "=" ]
        node [ id  2 label "C+" ]
        node [ id  7 label "C" ]
    ]
    context [
        node [ id  1 label "C" ]
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
        node [ id  2 label "C" ]
        edge [ source  6 target  7 label "-" ]
        edge [ source  2 target  6 label "-" ]
    ]
]