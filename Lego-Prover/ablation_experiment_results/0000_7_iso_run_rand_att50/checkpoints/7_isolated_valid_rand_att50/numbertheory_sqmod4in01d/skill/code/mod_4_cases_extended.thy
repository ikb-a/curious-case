lemma mod_4_cases_extended:
  fixes a :: int
  shows "a mod 4 = 0 \<or> a mod 4 = 1 \<or> a mod 4 = 2 \<or> a mod 4 = 3 \<or> a mod 4 = 4"
proof -
  have "a mod 4 = 0 \<or> a mod 4 = 1 \<or> a mod 4 = 2 \<or> a mod 4 = 3" by auto
  thus ?thesis by auto
qed