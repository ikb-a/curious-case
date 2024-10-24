lemma neg_thirteen_times_extended:
  fixes x y :: real
  shows "-13 * (x + y) = -13 * x + -13 * y"
proof -
  have "-13 * (x + y) = -13 * x + -13 * y"
    by (simp add: distrib_left)
  thus ?thesis .
qed