lemma square_root_properties:
  fixes a b :: real
  assumes "a = b"
  shows "sqrt a = sqrt b" 
    and "sqrt a^2 = abs a" 
    and "sqrt (a * b) = sqrt a * sqrt b"
  using assms by (simp_all add: power2_eq_square)