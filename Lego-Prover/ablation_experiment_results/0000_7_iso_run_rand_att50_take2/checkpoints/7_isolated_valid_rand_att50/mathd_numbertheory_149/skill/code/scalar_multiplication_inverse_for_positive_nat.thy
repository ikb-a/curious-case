lemma scalar_multiplication_inverse_for_positive_nat:
  fixes a b :: nat
  assumes "a > 0" "b > 0"
  shows "(1 / (real a)) * (real a * real b) = real b"
proof -
  have "real a * (1 / real a) = 1" using assms by (simp add: field_simps)
  then have "real b = (1 / real a) * (real a * real b)" by auto
  thus ?thesis by simp
qed