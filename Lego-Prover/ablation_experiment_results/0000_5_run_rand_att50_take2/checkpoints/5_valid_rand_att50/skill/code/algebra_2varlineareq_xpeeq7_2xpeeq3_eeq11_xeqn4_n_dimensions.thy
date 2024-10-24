lemma algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_n_dimensions:
  fixes x e :: "complex list"
  assumes "length x = n" "length e = n"
    and h0: "\<forall>i. x ! i + e ! i = 7"
    and h1: "\<forall>i. 2 * (x ! i) + e ! i = 3"
  shows "\<forall>i. e ! i = 11 \<and> x ! i = -4"
proof -
  have e_eq: "\<forall>i. e ! i = 7 - (x ! i)" using h0 by (auto simp: field_simps)
  have eq2_substituted: "\<forall>i. 2 * (x ! i) + (7 - (x ! i)) = 3" using h1 e_eq by auto
  have simplified_eq: "\<forall>i. (x ! i) + 7 = 3" using eq2_substituted by auto
  have x_values: "\<forall>i. x ! i = -4" using simplified_eq by (metis ab_semigroup_add_class.add_ac(1) add_minus_cancel algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4 mult_2)
  have e_values: "\<forall>i. e ! i = 7 - (-4)" using e_eq x_values by auto
  show ?thesis using x_values e_values by auto
qed