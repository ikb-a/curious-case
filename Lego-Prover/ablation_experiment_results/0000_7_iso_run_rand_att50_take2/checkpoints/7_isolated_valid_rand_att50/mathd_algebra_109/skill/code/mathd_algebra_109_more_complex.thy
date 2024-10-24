theorem mathd_algebra_109_more_complex:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b + c = 15"
    and h1 : "a = 4"
    and h2 : "c = 3"
  shows "b = 0"
proof -
  from h1 have h3: "3 * 4 + 2 * b + 3 = 15" by (metis dbl_simps(3) h0 h2)
  have h4: "12 + 2 * b + 3 = 15" using h3 by simp
  hence "2 * b = 0" by (simp add: add_diff_eq)
  thus "b = 0" using `2 * b = 0` by simp
qed