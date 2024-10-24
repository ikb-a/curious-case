theorem mathd_algebra_109_generalized:
  fixes a b c :: real
  assumes h0: "3*a + 2*b = c"
  shows "b = (c - 3*a) / 2"
proof -
  have "b = (c - 3*a) / 2" using h0 by (simp add: algebra_simps)
  show ?thesis by (metis \<open>b = (c - 3 * a) / 2\<close>)
qed