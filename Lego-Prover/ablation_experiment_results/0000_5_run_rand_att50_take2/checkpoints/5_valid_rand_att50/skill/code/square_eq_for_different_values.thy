lemma square_eq_for_different_values:
  fixes a b :: real
  assumes "a = b" "a \<ge> 0" "b \<ge> 0"
  shows "a^2 = b^2"
  using assms by simp