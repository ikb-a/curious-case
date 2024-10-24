lemma mod10_cases:
  fixes a :: int
  shows "a mod 10 = 0 \<or> a mod 10 = 1 \<or> a mod 10 = 2 \<or> a mod 10 = 3 \<or> a mod 10 = 4 \<or> a mod 10 = 5 \<or> a mod 10 = 6 \<or> a mod 10 = 7 \<or> a mod 10 = 8 \<or> a mod 10 = 9"
  by presburger