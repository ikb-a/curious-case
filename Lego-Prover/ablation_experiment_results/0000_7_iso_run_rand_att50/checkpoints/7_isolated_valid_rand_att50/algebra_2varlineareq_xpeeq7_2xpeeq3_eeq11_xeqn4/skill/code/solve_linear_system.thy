lemma solve_linear_system:
  fixes x e :: complex
  assumes "x + e = 7" "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have eq1: "e = 7 - x" using assms(1) by (auto simp: field_simps)
  have eq2: "2 * x + (7 - x) = 3" using eq1 assms(2) by simp
  have "2 * x + 7 - x = 3" by (smt (verit) eq2 group_cancel.sub1)
  have "x + 7 = 3" by (smt (verit) assms(1) assms(2) left_add_twice)
  then have "x = 3 - 7" by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  hence "x = -4" by simp
  then have "e = 7 - (-4)" using eq1 by simp
  thus ?thesis by (metis \<open>x = - 4\<close> add.commute diff_minus_eq_add numeral_Bit0 numeral_eq_iff numeral_plus_numeral semiring_norm(7))
qed