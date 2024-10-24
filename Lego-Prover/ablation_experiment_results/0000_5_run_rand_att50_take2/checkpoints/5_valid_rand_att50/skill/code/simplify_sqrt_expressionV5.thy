lemma simplify_sqrt_expression:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "sqrt a / b = sqrt (a / (b^2))"
proof -
  have "sqrt a / b = sqrt a * (1 / b)" by (simp add: field_simps)
  also have "... = sqrt a * sqrt (1 / (b^2))" 
    using assms by (simp add: real_sqrt_divide)
  also have "... = sqrt (a * (1 / (b^2)))" 
    by (metis real_sqrt_mult)
  also have "... = sqrt (a / (b^2))" 
    by (simp add: field_simps)
  finally show ?thesis by (simp add: field_simps)
qed