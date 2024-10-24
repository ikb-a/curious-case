lemma square_mod4:
  fixes a :: int
  shows "(a^2 mod 4 = 0) \<or> (a^2 mod 4 = 1)"
  using mod4_squares mod4_squares_cases by auto