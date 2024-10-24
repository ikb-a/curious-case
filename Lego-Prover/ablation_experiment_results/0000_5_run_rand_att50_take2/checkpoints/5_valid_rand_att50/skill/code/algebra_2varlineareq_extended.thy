theorem algebra_2varlineareq_extended:
  fixes x y e :: complex
  assumes h0 : "x + y = 7"
    and h1 : "2 * x + y = 3"
  shows "y = 11 \<and> x = (-4)"
proof -
  have y_eq: "y = 7 - x" using h0 by (simp add: field_simps)
  have eq2_substituted: "2 * x + (7 - x) = 3" using h1 y_eq by simp
  have simplified_eq: "x + 7 = 3" using eq2_substituted by simp
  have x_value: "x = -4" using simplified_eq by (metis add.commute add_minus_cancel algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4 diff_add_eq diff_minus_eq_add mult.commute mult_2_right verit_minus_simplify(4))
  have y_value: "y = 7 - (-4)" using y_eq x_value by simp
  show ?thesis using x_value y_value by simp
qed