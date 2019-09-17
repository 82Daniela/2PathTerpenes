# Rule refrence:  (Christianson, 2017) https://doi.org/10.1021/acs.chemrev.7b00287
rule[
	ruleID	"Disphophate loss general"
	left[
		node [ id  1  label "C"]
		node [ id 16  label "O"]
		edge [source 1 target 16 label "-"]		
	]
	context[
	node [ id  2  label "C"]
	node [ id  3  label "C"]
	node [ id  4  label "C"]
	node [ id 17 label "P" ]
	node [ id 18 label "*" ] 
	edge [source 1 target  2 label "-"]
	edge [source 2 target  3 label "="]
	edge [source 3 target  4 label "-"]
	edge [ source 16 target 17 label "-" ]
	edge [ source 17 target 18 label "-" ]	
	]
	right[
		node [ id  1  label "C+"]
		node [ id 16  label "O-"]
	]
]
