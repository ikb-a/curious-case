lemma cancel_div_for_inequalities_combined_extended_stronger:
  fixes x a b c d e :: real
  assumes "x > 0" "d > 0" "e > 0" "a * x + b < c * x"
  shows "d * (a + (b / x)) < d * c + e"
proof -
  have "a * x + b < c * x" using assms(4) by simp
  hence "x * (a + (b / x)) < c * x" by (smt (verit) assms(1) cancel_div_for_inequalities_combined_extended_generalized mult.commute)
  thus ?thesis using assms(2) assms(3) by (smt (verit) assms(1) assms(4) cancel_div_for_inequalities_combined_extended_generalized)
qed