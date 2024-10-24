lemma scalar_multiplication_inverse_generalized:
  fixes a :: real
  assumes "a > 0"
  shows "a * (1 / a) = 1"
proof -
  have "a * (1 / a) = 1" using assms by (simp add: field_simps)
  thus ?thesis .
qed