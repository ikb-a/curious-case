lemma linear_equation_system_solution:
  fixes x e :: complex
  assumes "x + e = a" "2 * x + e = b"
  shows "e = a - x \<and> x = (b - a) / (2 - 1)"
proof -
  have e_eq: "e = a - x" using assms(1) by (auto simp: field_simps)
  have eq2_substituted: "2 * x + (a - x) = b" using assms(2) e_eq by simp
  then have simplified_eq: "x + a = b" by simp
  have x_value: "x = b - a" using simplified_eq by (metis add.commute add_diff_cancel_right' algebra_simps)
  show ?thesis using x_value e_eq by simp
qed