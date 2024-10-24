lemma neg_thirteen_times_general:
  fixes x :: real
  assumes "x \<in> {x | x. True}"  
  shows "-13 * x = -13 * x"
  by simp