lemma solve_linear_system:
  fixes x e :: complex
  assumes "x + e = a"
    and "2 * x + e = b"
  shows "e = (a - x) \<and> x = (b - a) / 1"
proof -
  have e_eq: "e = a - x" using assms(1) by (auto simp: field_simps)
  have substitution: "2 * x + (a - x) = b" using e_eq assms(2) by simp
  have simplified_eq: "x + a = b" using substitution by simp
  have x_value: "x = b - a" using simplified_eq by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have x_result: "x = (b - a)" by simp
  have e_value: "e = a - (b - a)" using e_eq x_result by simp
  then have e_result: "e = (2 * a - b)" by simp
  show ?thesis using x_result e_result by auto
qed