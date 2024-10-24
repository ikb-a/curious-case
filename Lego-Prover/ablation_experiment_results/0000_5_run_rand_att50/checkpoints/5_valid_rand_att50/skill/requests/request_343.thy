lemma mod4_squares_cases:
  fixes a :: int
  shows "(a mod 4 = 1) \<longrightarrow> (a^2 mod 4 = 1) \<and> (a mod 4 = 2) \<longrightarrow> (a^2 mod 4 = 0) \<and> (a mod 4 = 3) \<longrightarrow> (a^2 mod 4 = 1)"