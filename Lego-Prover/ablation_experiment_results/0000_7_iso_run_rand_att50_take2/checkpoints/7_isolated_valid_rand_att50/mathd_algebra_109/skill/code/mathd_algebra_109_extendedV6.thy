theorem mathd_algebra_109_extended:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = 4"
    and h2 : "c = b + 2"
  shows "b = 0 \<and> c = 2"
proof -
  have "3 * 4 + 2 * b = 12" using h1 by (metis dbl_inc_simps(3) dbl_simps(3) h0)
  have "12 + 2 * b = 12" by (smt (verit) \<open>3 * 4 + 2 * b = 12\<close>)
  have "2 * b = 0" using `12 + 2 * b = 12` by simp
  have "b = 0" using `2 * b = 0` by simp
  then have "c = b + 2" using h2 by simp
  thus "b = 0 \<and> c = 2" using `b = 0` by simp
qed