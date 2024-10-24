lemma square_properties:
  fixes a :: int
  shows "a mod 4 = 0 \<Longrightarrow> a^2 mod 4 = 0"
  and "a mod 4 = 1 \<Longrightarrow> a^2 mod 4 = 1"
  and "a mod 4 = 2 \<Longrightarrow> a^2 mod 4 = 0"
  and "a mod 4 = 3 \<Longrightarrow> a^2 mod 4 = 1"