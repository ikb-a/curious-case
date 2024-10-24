theorem mathd_algebra_109_multi:
  fixes a b c d :: real
  assumes h0 : "3*a + 2*b + c = 12"
    and h1 : "a = 4"
    and h2 : "c = 0"
  shows "b = 0"
proof -
  have "3 * 4 + 2 * b + c = 12" using h1 by (metis dbl_inc_simps(3) dbl_simps(3) h0)
  have "12 + 2 * b + c = 12" using `c = 0` by (smt (verit) \<open>3 * 4 + 2 * b + c = 12\<close>)
  have "2 * b + c = 0" using `12 + 2 * b + c = 12` by simp
  have "2 * b = 0" using `c = 0` by (metis \<open>2 * b + c = 0\<close> dbl_def dbl_simps(3) mult_2 verit_sum_simplify)
  have "b = 0" using `2 * b = 0` by simp
  show ?thesis using `b = 0` by simp
qed