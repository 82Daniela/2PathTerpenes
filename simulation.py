######################################
# RULES
######################################
pushFilePrefix("rules/")


r32 = ruleGML ('common_1-2_H_shift.gml')

r25 = ruleGML ('common_opp_loss.gml')


popFilePrefix()
######################################
# DEFINE LIST OF INITIAL INPUTS
######################################
eductMols = [gpp,H2O]

######################################
# ITERATIONS
######################################


strat = (addSubset(eductMols) >> repeat[2](inputRules))


######################################
# NETWORK GENERATION
######################################
ls = LabelSettings(LabelType.Term, LabelRelation.Unification)
def overallCharge(a): return sum(int(v.charge) for v in a.vertices)
def countCycs(a): return a.numEdges - a.numVertices + 1
dg = dgRuleComp(inputGraphs, strat, ls)
dg.calc()