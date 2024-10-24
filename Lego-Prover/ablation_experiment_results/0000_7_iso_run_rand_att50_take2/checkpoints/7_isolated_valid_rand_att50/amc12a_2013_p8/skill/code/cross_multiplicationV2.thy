lemma cross_multiplication:
  fixes a b c d :: real
  assumes "a \<noteq> b" "c \<noteq> 0" "d \<noteq> 0"
  shows "(a - b) * c = (a - b) * d \<longrightarrow> c = d"
  using assms by auto