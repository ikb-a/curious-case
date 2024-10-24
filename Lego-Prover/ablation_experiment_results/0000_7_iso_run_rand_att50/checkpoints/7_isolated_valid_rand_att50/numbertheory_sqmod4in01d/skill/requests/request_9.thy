lemma mod4_cases:
  fixes a :: int
  shows "a mod 4 = 0 \<or> a mod 4 = 1 \<or> a mod 4 = 2 \<or> a mod 4 = 3"
  by auto

lemma square_mod4:
  fixes a :: int
  shows "(a mod 4 = 0) \<Longrightarrow> (a^2 mod 4 = 0)"
  and "(a mod 4 = 1) \<Longrightarrow> (a^2 mod 4 = 1)"
  and "(a mod 4 = 2) \<Longrightarrow> (a^2 mod 4 = 0)"
  and "(a mod 4 = 3) \<Longrightarrow> (a^2 mod 4 = 1)"
  by (simp_all add: power2_eq_square)