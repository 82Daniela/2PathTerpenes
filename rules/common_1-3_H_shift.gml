rule [
    ruleID "1,3 hydrid shift"
    left [
        node [ id 1 label "C"  ]
        node [ id 2 label "C+" ]
        edge [ source 1 target 3 label "-" ]
    ]
    context [
        node [ id 3 label "H" ]
        node [ id 4 label "C" ]
        edge [ source 1 target 4 label "-" ]
        edge [ source 2 target 4 label "-" ] 
    ]
    right [
        node [ id 1 label "C+" ]
        node [ id 2 label "C" ]
        edge [ source 2 target 3 label "-" ]
    ]
]

