theorem mathd_algebra_109_3D:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b + c = 12"
    and h1 : "a = 4"
  shows "2*b + c = 0"
proof -
  have "3 * 4 + 2 * b + c = 12" using h1 by (metis dbl_inc_simps(3) dbl_simps(3) h0)
  have "12 + 2 * b + c = 12" by (smt (verit) \<open>3 * 4 + 2 * b + c = 12\<close>)
  hence "2 * b + c = 0" by simp
  show ?thesis using `2 * b + c = 0` by simp
qed