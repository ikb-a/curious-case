lemma reciprocal_property_with_b:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "(a * b) * (1 / (a * b)) = 1"
  using assms by (simp add: field_simps)