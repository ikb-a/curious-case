lemma multiplication_property:
  fixes a b :: real
  assumes "a \<noteq> 0"
  shows "a * (b / a) = b"
  using assms division_property by simp