lemma non_zero_multiplication:
  fixes a b :: real
  assumes "a \<noteq> 0"
  shows "a * (b / a) = b"
  using non_zero_division[of a b] assms by auto