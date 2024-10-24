lemma scalar_multiplication_inverse_for_positive_numbers_general:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "(1 / a) * a * b = b"
proof -
  have "a * (1 / a) = 1" using assms by (simp add: field_simps)
  thus ?thesis by (simp add: mult.assoc)
qed