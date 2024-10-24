lemma product_of_non_zero:
  fixes a b :: real
  assumes "a \<noteq> 0" and "b \<noteq> 0"
  shows "a * b \<noteq> 0"
  using assms by auto