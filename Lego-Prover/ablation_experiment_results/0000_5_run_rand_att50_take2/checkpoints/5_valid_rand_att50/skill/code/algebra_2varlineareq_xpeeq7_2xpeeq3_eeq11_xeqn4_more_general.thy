theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_more_general:
  fixes x e :: real
  assumes h0 : "x + e = a" 
    and h1 : "2 * x + e = b"
  shows "e = a - x \<and> x = (b - a) / (2 - 1)"
proof -
  have e_eq: "e = a - x" using h0 by (simp add: field_simps)
  have eq2_substituted: "2 * x + (a - x) = b" using h1 e_eq by simp
  have simplified_eq: "x + a = b" using eq2_substituted by simp
  have x_value: "x = b - a" using simplified_eq by (metis add.commute add_diff_cancel_right')
  show ?thesis using x_value e_eq by auto
qed