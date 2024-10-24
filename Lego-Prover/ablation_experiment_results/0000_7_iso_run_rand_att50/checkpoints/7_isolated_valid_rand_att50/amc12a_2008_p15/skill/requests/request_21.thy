lemma combine_mod_results:
  fixes x y :: nat
  assumes "x mod 10 = 0" and "y mod 10 = 6"
  shows "(x + y) mod 10 = 6"