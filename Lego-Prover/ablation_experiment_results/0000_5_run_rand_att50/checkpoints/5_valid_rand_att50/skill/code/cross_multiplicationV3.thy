lemma cross_multiplication:
  fixes a b c d :: real
  assumes "b \<noteq> 0" and "d \<noteq> 0" and "a - c \<noteq> 0"
  shows "(a - c) * b * d = (b * d) * (a - c)"
  using assms by simp