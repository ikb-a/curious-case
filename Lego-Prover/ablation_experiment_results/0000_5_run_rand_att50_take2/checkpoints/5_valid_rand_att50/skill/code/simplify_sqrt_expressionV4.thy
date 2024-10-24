lemma simplify_sqrt_expression:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "sqrt a / b = sqrt (a / (b^2))"
proof -
  have "b^2 > 0" using assms(2) by (simp add: power2_eq_square)
  hence "sqrt (b^2) = b" by (metis assms(2) less_eq_real_def real_sqrt_unique)
  have "sqrt a / b = sqrt a * (1 / b)" by (simp add: field_split_simps)
  also have "... = sqrt a * sqrt (1 / (b^2))" by (metis \<open>sqrt (b\<^sup>2) = b\<close> calculation one_add_one power2_eq_square real_sqrt_divide real_sqrt_one)
  also have "... = sqrt (a * (1 / (b^2)))" by (metis real_sqrt_mult)
  finally show ?thesis using `b^2 > 0` by (simp add: divide_simps)
qed