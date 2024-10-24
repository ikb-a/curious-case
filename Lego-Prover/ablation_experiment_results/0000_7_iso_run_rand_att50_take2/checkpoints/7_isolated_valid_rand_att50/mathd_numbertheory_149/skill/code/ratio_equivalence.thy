lemma ratio_equivalence:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "a / b = (a * (1 / b))"
  using division_and_nonzero[of b a] assms by simp