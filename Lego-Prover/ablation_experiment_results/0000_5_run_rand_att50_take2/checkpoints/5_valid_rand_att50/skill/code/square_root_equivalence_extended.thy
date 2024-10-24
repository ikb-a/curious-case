lemma square_root_equivalence_extended:
  fixes a b :: real
  assumes "a >= 0" "b >= 0" "sqrt a = sqrt b"
  shows "a = b"
  using assms by auto