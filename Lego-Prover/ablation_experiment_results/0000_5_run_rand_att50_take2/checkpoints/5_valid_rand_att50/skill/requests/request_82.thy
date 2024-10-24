lemma square_mod_4:
  fixes a :: int
  shows "(a mod 4 = 0) \<longrightarrow> (a^2 mod 4 = 0)" |
       "(a mod 4 = 1) \<longrightarrow> (a^2 mod 4 = 1)" |
       "(a mod 4 = 2) \<longrightarrow> (a^2 mod 4 = 0)" |
       "(a mod 4 = 3) \<longrightarrow> (a^2 mod 4 = 1)"