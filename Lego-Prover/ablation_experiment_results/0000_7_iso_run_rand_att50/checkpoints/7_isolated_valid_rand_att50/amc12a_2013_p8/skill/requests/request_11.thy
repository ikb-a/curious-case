lemma non_zero_division:
  fixes a b :: real
  assumes "a \<noteq> b" "c \<noteq> 0"
  shows "a * c = b * c \<Longrightarrow> a = b"