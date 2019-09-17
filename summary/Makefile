SHELL=/bin/bash
summary/all.tex: gen
	echo '\summarySection{Plant Monoterpenes Biosynthesis}' >> summary/all.tex
	echo '\summaryDGHyper{\texttt{dg\_0}}{out/006_dg_0_11100}{\texttt{out/006\_dg\_0\_11100}}' >> summary/all.tex
summary.pdf: summary/all.tex
	/home/mod-v0.8.0/bin/../bin/mod_post --mode compileSummary
include summary/MakefileImpl
include summary/MakefileDep
include summary/MakefileAllTarget
include summary/MakefileClean
