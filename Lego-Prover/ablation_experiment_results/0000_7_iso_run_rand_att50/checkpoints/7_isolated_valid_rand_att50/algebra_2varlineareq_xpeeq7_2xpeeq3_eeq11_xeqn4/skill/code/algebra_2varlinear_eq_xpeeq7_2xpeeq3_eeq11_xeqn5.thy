theorem algebra_2varlinear_eq_xpeeq7_2xpeeq3_eeq11_xeqn5:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e + 2 * x = 3"
proof -
  have "e = 7 - x" using h0 by (auto simp: field_simps)
  then have "e + 2 * x = (7 - x) + 2 * x" by simp
  then show ?thesis by (metis add.commute dbl_def dbl_inc_simps(3) dbl_simps(3) h1 mult_2)
qed