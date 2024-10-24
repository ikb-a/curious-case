lemma combine_mod:
  fixes x y :: nat
  assumes "x mod 10 = a" "y mod 10 = b"
  shows "(x + y) mod 10 = (a + b) mod 10"