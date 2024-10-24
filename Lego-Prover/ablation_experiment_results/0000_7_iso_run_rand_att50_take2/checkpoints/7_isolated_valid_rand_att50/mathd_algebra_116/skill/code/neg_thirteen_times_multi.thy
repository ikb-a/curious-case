lemma neg_thirteen_times_multi:
  fixes x :: real
  fixes n :: nat
  shows "-13 * (x + real_of_nat n) = -13 * x - 13 * real_of_nat n"
proof -
  have "-13 * (x + real_of_nat n) = -13 * x - 13 * real_of_nat n" 
    by (simp add: algebra_simps)
  then show ?thesis by simp
qed