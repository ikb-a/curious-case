lemma reciprocal_and_product_generalized:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "a * (1 / a) = 1 \<and> b * (1 / b) = 1"
  using reciprocal_and_product assms by simp