lemma mod_lcm:
  fixes x y :: nat
  assumes "x mod a = b" "y mod c = d"
  shows "x + y mod (lcm a c) = (b + d) mod (lcm a c)"