lemma mod16_cases:
  fixes a :: nat
  shows "a mod 16 = 0 \<or> a mod 16 = 1 \<or> a mod 16 = 2 \<or> a mod 16 = 3 \<or> a mod 16 = 4 \<or> a mod 16 = 5 \<or> a mod 16 = 6 \<or> a mod 16 = 7 \<or> a mod 16 = 8 \<or> a mod 16 = 9 \<or> a mod 16 = 10 \<or> a mod 16 = 11 \<or> a mod 16 = 12 \<or> a mod 16 = 13 \<or> a mod 16 = 14 \<or> a mod 16 = 15"
  by presburger