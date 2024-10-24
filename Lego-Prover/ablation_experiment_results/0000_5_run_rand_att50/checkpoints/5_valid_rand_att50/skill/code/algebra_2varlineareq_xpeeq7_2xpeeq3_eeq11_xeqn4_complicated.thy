lemma algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_complicated:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "x + e = 7 \<and> e = 11 \<and> x = -4"
proof -
  have e_expr: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (7 - x) = 3" using e_expr h1 by simp
  have eq_simplified: "x + 7 = 3" using eq_substituted by simp
  have x_value: "x = 3 - 7" using eq_simplified by (metis ab_group_add_class.ab_diff_conv_add_uminus ab_semigroup_add_class.add_ac(1) add.commute add_diff_cancel add_minus_cancel algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_simple diff_diff_eq diff_minus_eq_add group_cancel.sub1 left_add_twice minus_diff_eq minus_equation_iff uminus_add_conv_diff)
  then have x_value_final: "x = -4" by simp
  have e_value: "e = 7 - (-4)" using e_expr x_value_final by simp
  then show ?thesis using x_value_final by auto
qed