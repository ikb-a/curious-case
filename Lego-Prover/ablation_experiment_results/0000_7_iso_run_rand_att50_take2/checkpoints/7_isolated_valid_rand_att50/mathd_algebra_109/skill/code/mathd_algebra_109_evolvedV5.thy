theorem mathd_algebra_109_evolved:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = 4"
  shows "b = 0"
proof -
  from h1 have h2: "3 * 4 + 2 * b = 12" by (metis dbl_inc_simps(3) dbl_simps(3) h0)
  have h3: "12 + 2 * b = 12" using h2 by simp
  hence "2 * b = 0" by (simp add: add_diff_eq)
  thus "b = 0" using `2 * b = 0` by simp
qed