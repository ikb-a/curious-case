lemma mod_7_cases:
  fixes n :: int
  shows "n mod 7 = 0 \<or> n mod 7 = 1 \<or> n mod 7 = 2 \<or> n mod 7 = 3 \<or> n mod 7 = 4 \<or> n mod 7 = 5 \<or> n mod 7 = 6"
  by auto