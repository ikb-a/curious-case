lemma mod_arithmetic:
  fixes x y :: nat
  assumes "x mod n = a" "y mod n = b"
  shows "(x + y) mod n = (a + b) mod n"