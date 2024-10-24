lemma square_difference_property:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "(a - b)^2 = a^2 + b^2 - 2 * a * b"
  using assms by sos