theorem mathd_algebra_109_extended:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = n"  
  shows "b = (12 - 3*n)/2"  
proof -
  have "3 * n + 2 * b = 12" using h1 by (metis dbl_inc_simps(3) dbl_simps(3) h0)
  have "2 * b = 12 - 3 * n" by (smt (verit) h0 h1)
  have "b = (12 - 3 * n) / 2" using `2 * b = 12 - 3 * n` by simp
  show ?thesis by (metis \<open>b = (12 - 3 * n) / 2\<close>)
qed