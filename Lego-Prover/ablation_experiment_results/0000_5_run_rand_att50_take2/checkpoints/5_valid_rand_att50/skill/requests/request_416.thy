lemma congruences:
  fixes N :: nat
  assumes "N < 50"
  shows "N mod 8 = 5 \<Longrightarrow> N mod 6 = 3 \<Longrightarrow> N = 21 \<or> N = 45"