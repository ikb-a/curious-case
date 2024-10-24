theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_generalized:
  fixes a b :: complex
  assumes h0 : "a + b = 7"
    and h1 : "2 * a + b = 3"
  shows "b = 7 - a \<and> a = (3 - b) / 2"
proof -
  have b_eq: "b = 7 - a" using h0 by (auto simp: field_simps)
  have eq2_substituted: "2 * a + (7 - a) = 3" using h1 b_eq by simp
  have simplified_eq: "a + 7 = 3" using eq2_substituted by simp
  have a_value: "a = (3 - 7) / 1" using simplified_eq by (metis add_diff_cancel dbl_inc_simps(3) div_by_1 h0)
  have b_value: "b = 7 - a" using b_eq a_value by simp
  show ?thesis using a_value b_value by auto
qed