lemma congruences:
  fixes N :: nat
  assumes "N < 50"
  shows "N mod 8 = 5 \<and> N mod 6 = 3 \<Longrightarrow> N = 8k + 5 \<and> N = 6m + 3" for k m :: nat