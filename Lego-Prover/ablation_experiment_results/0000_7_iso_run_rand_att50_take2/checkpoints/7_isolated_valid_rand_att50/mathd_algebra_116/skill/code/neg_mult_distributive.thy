lemma neg_mult_distributive:
  fixes x :: real
  fixes y :: real
  shows "-13 * (x + y) = -13 * x + -13 * y"
proof -
  have "-13 * (x + y) = -13 * x + -13 * y" by (simp add: distrib_right)
  then show ?thesis by simp
qed