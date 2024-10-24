lemma a_times_vera_extended:
  fixes a b :: real
  assumes "a \<noteq> 0"
  shows "a * (b / a) = b"
  using assms nonzero_division by simp