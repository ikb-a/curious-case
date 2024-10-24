lemma optimization_minimum:
  fixes f :: "real \<Rightarrow> real"
  assumes "f x >= 0" for all x
  shows "min f = 0"