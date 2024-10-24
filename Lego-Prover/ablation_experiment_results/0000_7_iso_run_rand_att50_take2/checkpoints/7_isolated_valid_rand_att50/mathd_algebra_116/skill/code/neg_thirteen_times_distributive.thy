lemma neg_thirteen_times_distributive:
  fixes x :: real
  shows "(-13 * (x + 1)) = -13 * x - 13"
proof -
  have "(-13 * (x + 1)) = -13 * x + (-13 * 1)" by (simp only: distrib_left)
  thus ?thesis by simp
qed