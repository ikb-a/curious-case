lemma square_mod_4:
  fixes a :: int
  shows "(a mod 4 = 0) \<or> (a mod 4 = 1) \<or> (a mod 4 = 2) \<or> (a mod 4 = 3) \<Longrightarrow> (a^2 mod 4 = 0) \<or> (a^2 mod 4 = 1)"