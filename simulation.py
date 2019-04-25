######################################
#  PROCESSES SIMULATION 01
#  CONVERSION FPP-NPP
######################################

# GRAMMAR
ls = LabelSettings(LabelType.Term, LabelRelation.Unification)
######################################
#  PIVOT MOLECULES
######################################
gpp = graphDFS("CC(=CCCC(=CCOP(=O)(O)OP(=O)(O)O)C)C", "GPP")
H = graphDFS("[H+]", "H+")
H2O = smiles("[OH2]", "H2O")
######################################
# ANIONS
######################################
opp = graphDFS("OP(O)(OP(O)([O-])=O)=O", "OPP-")
######################################
# CATIONS
######################################
gppCationC1 = smiles("C([CH2+])=C(C)CCC=C(C)C", "geranyl cation C1+")
gppCationC3 = smiles("C(CC[C+](C=C)C)=C(C)C","geranyl cation C3+")
alfaTerpinylCation = smiles ("C1CC(CCC=1C)[C+](C)C", "alfa terpinyl cation")
alfaTerpinol = smiles ("C(CO)=C(C)CCC=C(C)C", "alfa terpinol")
######################################
# TARGET MOLECULES
######################################
alphaTerpinol = smiles("CC1=CCC(CC1)C(C)(C)O", "alpha-terpinol")
limonene = smiles ("CC1=CCC(CC1)C(=C)C","limonene")

######################################
# RULES
######################################
pushFilePrefix("rules/")
r00 = ruleGML('1-2Hshift.gml')
r01 = ruleGML('1-3Hshift.gml')
r02 = ruleGML('h_loss.gml')
r03 = ruleGML('h2o_gain.gml')
r04 = ruleGML('opp_loss_gpp.gml')
r05 = ruleGML('opp_loss_gpp_alternative.gml')
r06 = ruleGML('opp_gain_by_geranyl_cation.gml')
r07 = ruleGML('opp_loss_for_lpp_c3.gml')
r08 = ruleGML('opp_loss_for_lpp_c3_alternative.gml')
r09 = ruleGML('1-6-closure.gml')
r10 = ruleGML('3,7-closure.gml')
r11 = ruleGML('2,7-closure.gml')
r12 = ruleGML('WMshift.gml')
r13 = ruleGML('1-8-cyc.gml')
r14 = ruleGML('2-6-closure.gml')
popFilePrefix()


######################################
# DEFINE LIST OF INITIAL INPUTS
######################################
#eductMols = [gpp,H2O]
eductMols = [gppCationC1,H2O]

######################################
# HYPERGRAPH GENERATION
######################################

# comput overall charge of molecule
def overallCharge(a):
    return sum(int(v.charge) for v in a.vertices)

# calculate the cyclomatic number
def countCycs(a):
        return a.numEdges - a.numVertices + 1

# a general breadth-first expansion strategy
strat = (addSubset(eductMols) >> repeat[1](inputRules))

# calculate derivation graph (hypergraph)
dg = dgRuleComp(inputGraphs, strat, ls)
dg.calc()

######################################
# PDF PRINTER
######################################
p = DGPrinter()
# print molecule with all the hydrogenes attached
p.graphPrinter.collapseHydrogens = True
# color molecules with rings red, charged molecules blue
p.pushVertexColour(lambda g, dg: "red" if overallCharge(g) != 0 else "black" if countCycs(g) > 0 else "black")

postSection("Generated Hypergraph")
dg.print(p)

postSection("Rules")
for r in inputRules:
	r.print()

# Print product SMILES to stdout
for v in dg.vertices:
    m = v.graph
    if m.isMolecule:
        print(m.name, m.smiles)
    else:
        print(m.name, m.graphDFS)    
