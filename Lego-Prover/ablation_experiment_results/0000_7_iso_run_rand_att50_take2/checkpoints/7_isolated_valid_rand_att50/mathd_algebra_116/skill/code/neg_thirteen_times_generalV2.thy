lemma neg_thirteen_times_general:
  fixes x :: real
  fixes n :: nat
  shows "-13 * x = -13 * x + (n - n)"
proof -
  have "n - n = 0" by simp
  then show ?thesis by simp
qed