theorem mathd_algebra_109_extended:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b + c = 12"
    and h1 : "a = 4"
    and h2 : "c = 0"
  shows "b = 0"
proof -
  have "3 * 4 + 2 * b + 0 = 12" using h1 h2 by (metis dbl_inc_simps(3) dbl_simps(3) h0)
  thus "b = 0" by (simp add: algebra_simps)
qed