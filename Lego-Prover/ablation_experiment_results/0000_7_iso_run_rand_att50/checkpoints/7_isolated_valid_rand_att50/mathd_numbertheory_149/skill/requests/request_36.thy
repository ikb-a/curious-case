lemma congruences:
  fixes N :: nat
  assumes "N < 50"
  shows "N mod 8 = 5 \<longleftrightarrow> N = 8k + 5" for some k
    and "N mod 6 = 3 \<longleftrightarrow> N = 6j + 3" for some j