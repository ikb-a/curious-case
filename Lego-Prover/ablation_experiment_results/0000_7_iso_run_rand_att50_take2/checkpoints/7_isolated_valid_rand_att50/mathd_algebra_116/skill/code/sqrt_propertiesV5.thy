lemma sqrt_properties:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt (a * b) = sqrt a * sqrt b"
proof -
  have "sqrt (a * b) * sqrt (a * b) = a * b"
    using assms by auto
  also have "... = (sqrt a * sqrt a) * (sqrt b * sqrt b)"
    by (metis abs_mult abs_of_nonneg assms(1) assms(2) mult_nonneg_nonneg real_sqrt_abs2 real_sqrt_mult)
  also have "... = (sqrt a * sqrt b) * (sqrt a * sqrt b)"
    by (auto simp: field_simps)
  finally have "sqrt (a * b) * sqrt (a * b) = (sqrt a * sqrt b) * (sqrt a * sqrt b)" .
  then show ?thesis
    by (metis real_sqrt_mult)
qed