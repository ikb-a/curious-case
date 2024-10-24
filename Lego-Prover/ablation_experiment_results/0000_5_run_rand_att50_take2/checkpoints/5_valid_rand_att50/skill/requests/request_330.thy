lemma mod_equivalence:
  fixes a b c :: nat
  assumes "a mod m = b" and "a mod n = c"
  shows "a mod (lcm m n) = (some function of b and c)"