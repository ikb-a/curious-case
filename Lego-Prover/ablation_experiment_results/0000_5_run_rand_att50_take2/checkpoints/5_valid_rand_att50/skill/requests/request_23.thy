lemma optimization_minimum:
  fixes f :: "real \<Rightarrow> real"
  assumes "f is continuous on {x. x >= 0}"
  shows "f has a minimum on {x. x >= 0}"