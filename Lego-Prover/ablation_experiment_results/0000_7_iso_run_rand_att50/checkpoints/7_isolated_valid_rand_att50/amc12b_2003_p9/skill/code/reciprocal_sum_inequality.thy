lemma reciprocal_sum_inequality:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "(1/a) + (1/b) = (b + a) / (a * b)"
proof -
  have "(1/a) + (1/b) = (b + a) / (a * b)"
    using assms by (simp add: field_simps)
  thus ?thesis by simp
qed