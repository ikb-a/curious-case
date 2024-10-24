lemma neg_thirteen_times_grouped:
  fixes x y z :: real
  shows "-13 * (x + y + z) = -13 * x + -13 * y + -13 * z"
proof -
  have "-13 * (x + y + z) = -13 * (x + y) + -13 * z"
    by (simp add: distrib_left)
  also have "... = -13 * x + -13 * y + -13 * z"
    using neg_thirteen_times_extended by simp
  finally show ?thesis .
qed