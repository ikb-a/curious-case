lemma bounds_on_n:
  fixes N :: nat
  assumes "N < 50"
  shows "N mod 8 = 5 \<Longrightarrow> N mod 6 = 3 \<Longrightarrow> N < 50"