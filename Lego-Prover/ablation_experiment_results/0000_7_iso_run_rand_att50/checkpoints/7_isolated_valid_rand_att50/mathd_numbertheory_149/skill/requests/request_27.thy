lemma mod_simplification:
  fixes x y :: nat
  assumes "x mod y = a" "y > 0"
  shows "x = k * y + a" for some k :: nat