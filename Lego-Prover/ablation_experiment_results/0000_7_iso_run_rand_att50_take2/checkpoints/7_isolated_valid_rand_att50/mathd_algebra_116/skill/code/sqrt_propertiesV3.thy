lemma sqrt_properties:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt (a * b) = sqrt a * sqrt b"
proof -
  have "sqrt (a * b) * sqrt (a * b) = a * b"
    by (metis abs_of_nonneg assms(1) assms(2) mult_nonneg_nonneg real_sqrt_mult_self)
  also have "... = (sqrt a * sqrt a) * (sqrt b * sqrt b)"
    using assms by (auto simp: field_simps)
  also have "... = (sqrt a * sqrt b) * (sqrt a * sqrt b)"
    by (auto simp: field_simps)
  finally have "sqrt (a * b) * sqrt (a * b) = (sqrt a * sqrt b) * (sqrt a * sqrt b)" .
  then show ?thesis
    by (metis real_sqrt_mult)
qed