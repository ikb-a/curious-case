lemma chinese_remainder:
  fixes N :: nat
  assumes "N < 50"
    and "N mod 8 = 5"
    and "N mod 6 = 3"
  shows "N = 21 \<or> N = 45"