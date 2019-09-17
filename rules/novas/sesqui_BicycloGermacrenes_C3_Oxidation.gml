#   Bicyclogermacrene oxidation
#  Tran, D. N., & Cramer, N. (2014). Biomimetic synthesis of (+)-ledene, (+)-viridiflorol, (-)-palustrol, (+)-spathulenol, and psiguadial A, C, and D via the platform terpene (+)-bicyclogermacrene. Chemistry - A European Journal, 20(34), 10654–10660. https://doi.org/10.1002/chem.201403082

rule [
    ruleID "Bicyclogermacrene oxidation"
    left [
     edge [ source 17 target 18 label "-" ]
    ]
    context [
        node [ id  1 label "C" ]
        node [ id  2 label "C" ]
        node [ id  3 label "C" ]
        node [ id  4 label "C" ]
        node [ id  5 label "C" ]
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

        edge [ source  1 target  2 label "*" ]
        edge [ source  2 target  3 label "*" ]
        edge [ source  3 target  4 label "*" ]
        edge [ source  3 target 15 label "*" ]
        edge [ source  4 target  5 label "*" ]
        edge [ source  5 target  6 label "*" ]
        edge [ source  6 target  7 label "=" ]
        edge [ source  7 target  8 label "*" ]
        edge [ source  7 target 14 label "*" ]
        edge [ source  8 target  9 label "*" ]
        edge [ source  9 target 10 label "*" ]
        edge [ source 10 target 11 label "*" ]
        edge [ source 10 target  1 label "-" ]
        edge [ source 11 target  1 label "-" ]
        edge [ source 11 target 12 label "*" ]
        edge [ source 11 target 13 label "*" ]

        node [ id 17 label "H" ]
        node [ id 18 label "O" ]
        node [ id 19 label "H" ]
        edge [ source  18 target 19 label "-" ]
    ]
    right [
     edge [ source 3 target 18 label "-" ]
    ]
]