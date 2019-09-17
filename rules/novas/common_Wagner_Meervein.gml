rule [
    ruleID "Wagner-Meerwein 1,2 alcyl shift"
    left [
        node [ id 1 label "C+" ]
        node [ id 2 label "C"  ]
        edge [ source 2 target 3 label "-" ]
    ]
    context [
    node [ id 3 label "C" ]
    edge [ source 1 target 2 label "-" ] 
    ]
    right [
        node [ id 1 label "C" ]
        node [ id 2 label "C+" ]
        edge [ source 1 target 3 label "-" ]
    ]
]
