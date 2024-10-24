lemma solve_linear_system:
  fixes x e :: complex
  assumes "x + e = 7" "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have "e = 7 - x" using assms(1) by (auto simp: field_simps)
  then have "2 * x + (7 - x) = 3" using assms(2) by simp
  then have "2 * x + 7 - x = 3" by simp
  then have "x + 7 = 3" by simp
  then have "x = 3 - 7" by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have "x = -4" by simp
  then have "e = 7 - (-4)" using `x = -4` by (metis \<open>e = 7 - x\<close>)
  then have "e = 7 + 4" by simp
  then show "e = 11 \<and> x = -4" by (metis \<open>x = - 4\<close> add.commute diff_minus_eq_add numeral_plus_numeral semiring_norm(2) semiring_norm(7))
qed