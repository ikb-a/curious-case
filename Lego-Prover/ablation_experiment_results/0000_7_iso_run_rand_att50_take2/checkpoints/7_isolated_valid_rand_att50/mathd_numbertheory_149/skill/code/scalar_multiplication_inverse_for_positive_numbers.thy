lemma scalar_multiplication_inverse_for_positive_numbers:
  fixes a :: real
  assumes "a > 0"
  shows "(1 / a) * a = 1"
proof -
  have "a * (1 / a) = 1" using assms by (simp add: field_simps)
  thus ?thesis by (simp add: mult.commute)
qed