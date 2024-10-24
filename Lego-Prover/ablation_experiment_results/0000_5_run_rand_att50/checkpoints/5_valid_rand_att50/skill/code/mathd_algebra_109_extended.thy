theorem mathd_algebra_109_extended:
  fixes a b c :: real
  assumes h0 : "3 * a + 2 * b = c"
    and h1 : "a = 4"
    and h2 : "c = 12"
  shows "b = 0"
proof -
  have eq: "3 * a + 2 * b = c" using h0 by simp
  have "3 * 4 + 2 * b = c" using h1 eq by simp
  hence "12 + 2 * b = c" using h2 by simp
  thus "b = 0" 
    by (metis ab_left_minus dbl_def dbl_simps(3) double_zero_sym h2 minus_add_cancel mult_2)
qed