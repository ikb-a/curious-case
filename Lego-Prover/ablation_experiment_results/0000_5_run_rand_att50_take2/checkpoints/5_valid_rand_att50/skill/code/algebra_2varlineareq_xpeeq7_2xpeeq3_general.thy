theorem algebra_2varlineareq_xpeeq7_2xpeeq3_general:
  fixes x y :: complex
  assumes h0 : "x + y = a"          
    and h1 : "2 * x + y = b"        
  shows "y = a - x \<and> x = (b - a) / 1" 
proof -
  have y_eq: "y = a - x" using h0 by (auto simp: field_simps)
  have eq2_substituted: "2 * x + (a - x) = b" using h1 y_eq by simp
  have simplified_eq: "x + a = b" using eq2_substituted by simp
  have x_value: "x = b - a" using simplified_eq by (metis add.commute add_diff_cancel_right' dbl_simps(1) dbl_simps(5) diff_add_cancel diff_numeral_simps(1) sub_num_simps(3) sub_num_simps(6) sub_num_simps(9))
  have y_value: "y = a - (b - a)" using y_eq x_value by simp
  show ?thesis using x_value y_value by simp
qed