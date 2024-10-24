theorem mathd_algebra_109_generalized:
  fixes a b c :: real
  assumes h0 : "3 * a + 2 * b = c"
    and h1 : "a = 4"
  shows "b = (c - 12) / 2"
proof -
  from h1 have "3 * 4 + 2 * b = c" by (metis dbl_inc_simps(3) dbl_simps(3) h0)
  then have "12 + 2 * b = c" by simp
  hence "2 * b = c - 12" by simp
  thus "b = (c - 12) / 2" by (simp add: field_simps)
qed