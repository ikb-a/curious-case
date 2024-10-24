lemma simplify_square_root_expression:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt(a) * sqrt(b) = sqrt(a * b)"
proof -
  have "sqrt(a) * sqrt(b) * sqrt(a) * sqrt(b) = (sqrt(a) * sqrt(b))^2"
    by (simp add: power2_eq_square)
  also have "... = a * b"
    using assms by (auto simp: field_simps)
  also have "... = sqrt(a * b) * sqrt(a * b)"
    by (metis assms(1) assms(2) mult_nonneg_nonneg power2_eq_square real_sqrt_pow2)
  finally have "sqrt(a) * sqrt(b) * sqrt(a) * sqrt(b) = sqrt(a * b) * sqrt(a * b)" .
  then show ?thesis
    by (metis real_sqrt_mult)
qed