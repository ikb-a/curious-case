lemma mod_power_equivalence:
  fixes a b :: int and n k :: nat
  assumes "a ≡ b (mod n)"
  shows "a^k ≡ b^k (mod n)"