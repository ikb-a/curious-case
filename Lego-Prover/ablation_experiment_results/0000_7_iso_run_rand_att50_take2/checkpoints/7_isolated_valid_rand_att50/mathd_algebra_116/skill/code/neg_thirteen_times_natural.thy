lemma neg_thirteen_times_natural:
  fixes x :: real
  fixes n :: nat
  shows "-13 * (x + n) = -13 * x - 13 * n"
proof -
  have "-13 * (x + n) = -13 * x - 13 * n"
    by (simp add: algebra_simps)
  then show ?thesis by simp
qed