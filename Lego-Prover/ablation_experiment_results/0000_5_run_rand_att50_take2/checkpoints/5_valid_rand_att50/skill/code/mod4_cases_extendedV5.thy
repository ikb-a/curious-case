lemma mod4_cases_extended:
  fixes a :: int
  shows "a mod 4 = 0 \<or> a mod 4 = 1 \<or> a mod 4 = 2 \<or> a mod 4 = 3 \<or> a mod 4 = -1 \<or> a mod 4 = -2 \<or> a mod 4 = -3"
proof -
  have "a mod 4 = (a mod 4 + 4) mod 4" by auto
  then show ?thesis by auto
qed