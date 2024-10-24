lemma mod4_cases_extended:
  fixes a :: int
  assumes "a mod 4 = 0 \<or> a mod 4 = 1 \<or> a mod 4 = 2 \<or> a mod 4 = 3"
  shows "a mod 4 < 4"
proof -
  have "a mod 4 = 0 \<or> a mod 4 = 1 \<or> a mod 4 = 2 \<or> a mod 4 = 3" using assms by simp
  thus ?thesis by auto
qed