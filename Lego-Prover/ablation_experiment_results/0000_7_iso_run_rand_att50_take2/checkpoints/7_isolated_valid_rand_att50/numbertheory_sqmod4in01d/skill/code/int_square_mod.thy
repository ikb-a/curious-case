lemma int_square_mod:
  fixes a :: int
  shows "(a mod n)^2 mod n = (a^2 mod n)"
  by (simp add: power_mod)