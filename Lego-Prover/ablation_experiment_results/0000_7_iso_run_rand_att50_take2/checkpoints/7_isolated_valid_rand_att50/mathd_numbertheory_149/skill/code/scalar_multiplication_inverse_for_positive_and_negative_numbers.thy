lemma scalar_multiplication_inverse_for_positive_and_negative_numbers:
  fixes a b :: real
  assumes "a > 0" "b < 0"
  shows "(1 / a) * a = 1" and "(1 / b) * b = 1"
proof -
  have "a * (1 / a) = 1" using assms(1) by (simp add: field_simps)
  hence scalar_pos: "(1 / a) * a = 1" by (simp add: mult.commute)
  have "b * (1 / b) = 1" using assms(2) by (simp add: field_simps)
  hence scalar_neg: "(1 / b) * b = 1" by (simp add: mult.commute)
  show "(1 / a) * a = 1" and "(1 / b) * b = 1"
    using scalar_pos scalar_neg by auto
qed