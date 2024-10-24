lemma square_root_eq_multi:
  fixes a b :: real
  assumes "a = b"
  shows "sqrt a = sqrt b" 
  and "sqrt (a + c) = sqrt (b + c)" 
  and "sqrt (a * d) = sqrt (b * d)"
  using assms by auto