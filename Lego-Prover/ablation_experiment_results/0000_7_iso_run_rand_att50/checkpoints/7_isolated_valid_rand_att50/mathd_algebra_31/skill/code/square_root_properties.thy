lemma square_root_properties:
  fixes a b :: real
  assumes "a = b" "a \<ge> 0" "b \<ge> 0"
  shows "sqrt a = sqrt b" "sqrt a^2 = a" "sqrt b^2 = b"
  using assms by (auto simp: sqrt_def)