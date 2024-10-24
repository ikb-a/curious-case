lemma neg_thirteen_times_generalized:
  fixes x y :: real
  shows "-13 * x + 13 * y = 13 * (y - x)"
proof -
  have "-13 * x + 13 * y = 13 * (-x + y)" by (simp add: distrib_left)
  thus ?thesis by simp
qed