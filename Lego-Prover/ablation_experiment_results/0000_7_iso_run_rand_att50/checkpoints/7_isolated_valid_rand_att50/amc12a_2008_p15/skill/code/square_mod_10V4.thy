lemma square_mod_10:
  fixes x :: nat
  shows "(x mod 10)^2 mod 10 = (x^2 mod 10)"
  by (metis power_mod)