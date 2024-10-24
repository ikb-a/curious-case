lemma mod_equivalence:
  fixes x y :: nat
  assumes "x mod m = y mod m"
  shows "x ≡ y (mod m)"