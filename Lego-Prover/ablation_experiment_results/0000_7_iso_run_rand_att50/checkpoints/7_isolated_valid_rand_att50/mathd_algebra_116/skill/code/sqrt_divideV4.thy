lemma sqrt_divide:
  fixes a b :: real
  assumes "b > 0"
  shows "sqrt(a / b) = sqrt(a) / sqrt(b)"
proof -
  have "sqrt(a / b) = sqrt(a * (1 / b))" 
    by (simp add: divide_simps)
  also have "... = sqrt(a) * sqrt(1 / b)" 
    using assms by (metis real_sqrt_mult)
  also have "... = sqrt(a) * (1 / sqrt(b))" 
    using assms by (smt (verit) real_sqrt_divide real_sqrt_one)
  also have "... = sqrt(a) / sqrt(b)" 
    by (simp add: field_simps)
  finally show ?thesis by simp
qed