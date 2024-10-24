theorem algebra_2varlinear_eq:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have e_eq: "e = 7 - x" using h0 by (auto simp: field_simps)
  have substitution: "2 * x + (7 - x) = 3" using e_eq h1 by simp
  then have simplified_eq: "x + 7 = 3" by simp
  have x_value: "x = 3 - 7" using simplified_eq by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel)
  then have x_result: "x = -4" by simp
  have e_value: "e = 7 - (-4)" using e_eq x_result by simp
  then have e_result: "e = 11" by simp
  show ?thesis using x_result e_result by auto
qed