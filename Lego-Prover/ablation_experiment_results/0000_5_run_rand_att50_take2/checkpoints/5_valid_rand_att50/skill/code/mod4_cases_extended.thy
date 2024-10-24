lemma mod4_cases_extended:
  fixes a :: int
  shows "a mod 4 = 0 \<or> a mod 4 = 1 \<or> a mod 4 = 2 \<or> a mod 4 = 3"
proof -
  have "a mod 4 < 4" by (simp add: mod_less)
  then show ?thesis by auto
qed