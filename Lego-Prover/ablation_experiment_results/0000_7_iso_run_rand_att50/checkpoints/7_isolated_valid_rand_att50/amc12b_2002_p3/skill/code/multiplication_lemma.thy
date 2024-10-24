lemma multiplication_lemma:
  fixes a b :: real
  assumes "a \<noteq> 0"
  shows "a * (b / a) = b"
  using nonzero_division_generalized assms by simp