# Processes Special Issue "In Silico Metabolic Modeling and Engineering"
rule [
    ruleID "H+ loss"
    left [
        node [ id 2 label "C+" ]
        node [ id 3 label "H" ]
        edge [ source 1 target 2 label "-" ]
        edge [ source 1 target 3 label "-" ]
    ]
    context [
        node [ id 1 label "C" ]
        node [ id 4 label "*" ]
        node [ id 5 label "*" ]
        node [ id 6 label "*" ]
        edge [ source 1 target 4 label "-" ]
        edge [ source 2 target 5 label "-" ]
        edge [ source 2 target 6 label "-" ]
    ]
    right [
        node [ id 2 label "C" ]
        node [ id 3 label "H+" ]
        edge [ source 1 target 2 label "=" ]
    ]
]