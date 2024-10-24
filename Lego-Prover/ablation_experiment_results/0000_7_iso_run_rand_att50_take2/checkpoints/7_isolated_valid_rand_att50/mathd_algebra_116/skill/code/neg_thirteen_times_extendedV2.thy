lemma neg_thirteen_times_extended:
  fixes x :: real
  fixes n :: nat
  shows "-13 * x = -13 * x" 
  and "-13 * real_of_nat n = -13 * real_of_nat n"
  by simp+