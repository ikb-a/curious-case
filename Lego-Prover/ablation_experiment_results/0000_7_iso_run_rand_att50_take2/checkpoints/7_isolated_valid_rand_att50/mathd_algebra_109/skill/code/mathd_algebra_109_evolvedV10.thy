theorem mathd_algebra_109_evolved:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = 4"
  shows "b = 0"
proof -
  obtain c where "c = b" by auto
  have "3 * 4 + 2 * c = 12" using h1 by (metis \<open>c = b\<close> dbl_inc_simps(3) dbl_simps(3) h0)
  have "12 + 2 * c = 12" by (smt (verit) `3 * 4 + 2 * c = 12`)
  have "2 * c = 0" using `12 + 2 * c = 12` by simp
  hence "c = 0" using `2 * c = 0` by (simp add: field_simps)
  thus ?thesis using `c = b` by simp
qed