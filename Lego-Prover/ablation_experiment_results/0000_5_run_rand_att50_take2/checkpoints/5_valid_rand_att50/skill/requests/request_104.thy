lemma nonzero_division:
  fixes a b :: real
  assumes "a \<noteq> 0" and "b \<noteq> 0"
  shows "a / b = c \<Longrightarrow> a = c * b"