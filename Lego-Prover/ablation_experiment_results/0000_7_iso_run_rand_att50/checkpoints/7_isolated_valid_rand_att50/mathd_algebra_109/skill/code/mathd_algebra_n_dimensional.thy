theorem mathd_algebra_n_dimensional:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = n"
    and h1 : "a = m"
  shows "b = (n - 3*m) / 2"
proof -
  have "3 * a + 2 * b = n" using h0 by simp
  have "3 * m + 2 * b = n" using h1 by (metis dbl_inc_simps(3) dbl_simps(3) h0)
  have "2 * b = n - 3 * m" by (smt (verit) h0 h1)
  then have "b = (n - 3 * m) / 2" by (simp add: field_simps)
  thus "b = (n - 3 * m) / 2" by simp
qed