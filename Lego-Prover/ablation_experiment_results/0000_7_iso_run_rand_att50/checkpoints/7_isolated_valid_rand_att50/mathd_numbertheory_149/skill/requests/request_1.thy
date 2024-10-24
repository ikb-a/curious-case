lemma mod_add:
  fixes x y n :: nat
  assumes "n > 0"
  shows "(x + y) mod n = ((x mod n) + (y mod n)) mod n"