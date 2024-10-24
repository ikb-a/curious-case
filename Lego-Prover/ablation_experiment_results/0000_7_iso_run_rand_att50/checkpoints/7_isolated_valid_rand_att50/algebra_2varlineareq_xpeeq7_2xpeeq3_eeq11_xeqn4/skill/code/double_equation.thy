lemma double_equation:
  fixes x e :: complex
  assumes "x + e = a" "2 * x + e = b"
  shows "e = (2 * a - b) \<and> x = (b - a) / 1"
proof -
  have eq1: "e = a - x" using assms(1) by (simp add: field_simps)
  have eq2: "2 * x + (a - x) = b" using assms(2) eq1 by simp
  have eq3: "2 * x - x + a = b" using eq2 by simp
  then have "x + a = b" by simp
  then have "x = b - a" by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have "e = a - (b - a)" using eq1 by (metis \<open>x = b - a\<close>)
  then show ?thesis by (metis \<open>x = b - a\<close> diff_diff_eq2 div_by_1 mult.commute mult_2_right)
qed