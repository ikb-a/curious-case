lemma neg_thirteen_times_property:
  fixes x y :: real
  shows "(-13 * x) + (-13 * y) = -13 * (x + y)"
proof -
  have "(-13 * x) + (-13 * y) = -13 * (x + y)"
    by (simp add: distrib_left)
  thus ?thesis .
qed