# Rule refrence:  (Christianson, 2017) https://doi.org/10.1021/acs.chemrev.7b00287
rule [
    ruleID "Capture of H2O"
    left [
        node [ id 1 label "C+" ]
        node [ id 2 label "H" ]
        edge [ source 2 target 3 label "-" ]
    ]
    context [
        node [ id 3 label "O" ]
        node [ id 4 label "H" ]	
        edge [ source 3 target 4 label "-" ]
    ]
    right [
        node [ id 1 label "C" ]
        node [ id 2 label "H+" ]
        edge [ source 1 target 3 label "-" ]
    ]
]
