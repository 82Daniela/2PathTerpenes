rule[
	ruleID	"6,1 ring closure"
	left[
		node [ id 1  label "C+"]
		node [ id 7  label "C"]
		edge [source 6 target  7 label "="]	
	]
	context[
		node [ id  2  label "C"]
		node [ id  3  label "C"]
		node [ id  4  label "C"]
		node [ id  5  label "C"]
		node [ id  6  label "C"]
		node [ id  8  label "C"]
		node [ id  9  label "C"]
		node [ id 10  label "C"]
		edge [source 1 target  2 label "-"]
		edge [source 2 target  3 label "="]
		edge [source 3 target  4 label "-"]
		edge [source 4 target  5 label "-"]
		edge [source 5 target  6 label "-"]
		edge [source 7 target  8 label "-"]
		edge [source 7 target  9 label "-"]
		edge [source 3 target 10 label "-"]

	]
	right[

		node [ id 1  label "C"]
		node [ id 7  label "C+"]
		edge [source 1 target  6 label "-"]
		edge [source 6 target  7 label "-"]
	]
]
