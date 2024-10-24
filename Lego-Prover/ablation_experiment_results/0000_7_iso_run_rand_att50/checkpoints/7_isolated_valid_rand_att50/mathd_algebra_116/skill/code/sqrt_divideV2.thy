lemma sqrt_divide:
  fixes a b :: real
  assumes "b > 0"
  shows "sqrt(a / b) = sqrt(a) / sqrt(b)"
proof -
  have "sqrt(a / b) = sqrt(a * (1 / b))" by (simp)
  also have "... = sqrt(a) * sqrt(1 / b)" using assms by (metis real_sqrt_mult)
  also have "... = sqrt(a) / sqrt(b)" using assms by (simp add: real_sqrt_divide)
  finally show ?thesis by simp
qed