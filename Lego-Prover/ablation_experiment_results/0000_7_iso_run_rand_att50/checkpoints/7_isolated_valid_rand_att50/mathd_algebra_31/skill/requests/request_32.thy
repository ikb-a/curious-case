lemma limit_sqrt:
  fixes u :: "nat ⇒ real"
  assumes "filterlim u at_top (nhds L)"
  shows "filterlim (sqrt ∘ u) at_top (nhds (sqrt L))"