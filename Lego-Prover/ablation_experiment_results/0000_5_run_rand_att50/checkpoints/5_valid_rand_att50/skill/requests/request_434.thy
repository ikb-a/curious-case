lemma filterlim_sqrt:
  fixes u :: "nat ⇒ real"
  assumes "filterlim u at_top (nhds L)"
  shows "L = sqrt (x + L)"