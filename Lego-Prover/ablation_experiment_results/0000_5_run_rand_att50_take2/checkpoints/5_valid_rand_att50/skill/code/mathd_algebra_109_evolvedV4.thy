theorem mathd_algebra_109_evolved:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a = 4"
    and h2 : "c = 12"
  shows "b = (c - 3 * a) / 2"
proof -
  have eq: "3*a + 2*b = c" using h0 by simp
  have sub: "3 * 4 + 2 * b = c" using h1 eq by simp
  hence "12 + 2*b = c" by simp
  then have "2*b = c - 12" by (simp add: algebra_simps)
  hence "b = (c - 12) / 2" by (simp add: field_simps)
  thus ?thesis using h2 by (metis \<open>2 * b = c - 12\<close> add_diff_cancel_left' dbl_def dbl_inc_simps(3) dbl_simps(3) h0 mult.commute mult_2)
qed