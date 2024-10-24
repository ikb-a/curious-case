lemma square_mod4:
  fixes a :: int
  shows "(a mod 4 = 0) \<Longrightarrow> (a^2 mod 4 = 0)" |
         "(a mod 4 = 1) \<Longrightarrow> (a^2 mod 4 = 1)" |
         "(a mod 4 = 2) \<Longrightarrow> (a^2 mod 4 = 0)" |
         "(a mod 4 = 3) \<Longrightarrow> (a^2 mod 4 = 1)"