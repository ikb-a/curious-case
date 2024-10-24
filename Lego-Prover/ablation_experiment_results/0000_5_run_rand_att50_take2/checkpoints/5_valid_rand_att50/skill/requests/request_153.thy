lemma mod_mult:
  fixes x y n :: nat
  shows "(x * y) mod n = ((x mod n) * (y mod n)) mod n"