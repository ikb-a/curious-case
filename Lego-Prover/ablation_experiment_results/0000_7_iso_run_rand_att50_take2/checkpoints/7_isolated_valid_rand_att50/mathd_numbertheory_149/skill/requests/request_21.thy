lemma mod_sum:
  fixes x y :: nat
  assumes "x < n" "y < n"
  shows "(x + y) mod n = (x mod n + y mod n) mod n"