theorem mathd_algebra_109_multi:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = x"  
  shows "b = (12 - 3*x) / 2"
proof -
  have "3 * a + 2 * b = 12" using h0 by simp
  have "3 * x + 2 * b = 12" using h1 by (metis dbl_inc_simps(3) dbl_simps(3) h0)
  then show ?thesis by (simp add: algebra_simps)
qed