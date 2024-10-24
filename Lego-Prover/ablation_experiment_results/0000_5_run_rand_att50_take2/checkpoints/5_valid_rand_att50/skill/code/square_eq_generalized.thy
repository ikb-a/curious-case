lemma square_eq_generalized:
  fixes a b :: real
  assumes "a = b"
  shows "a^2 = b^2" 
  and "a^2 + c = b^2 + c" 
  and "a^2 - c = b^2 - c"
  using assms by (simp_all add: algebra_simps)