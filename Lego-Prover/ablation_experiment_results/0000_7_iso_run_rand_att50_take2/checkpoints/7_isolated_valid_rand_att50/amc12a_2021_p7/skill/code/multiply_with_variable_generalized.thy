lemma multiply_with_variable_generalized:
  fixes x a b :: real
  assumes "x > 0" "a = b" "c > 0"
  shows "a * (x * c) = b * (x * c)"
proof -
  have "a * (x * c) = b * (x * c)" using assms by (simp add: assms(2))
  thus ?thesis by simp
qed