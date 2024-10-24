lemma scalar_multiplication_inverse_properties:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "a * (1 / a) = 1" and "b * (1 / b) = 1"
  using assms by (simp_all add: field_simps)