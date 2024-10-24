lemma mod_equivalence:
  fixes a b :: int
  assumes "a ≡ b (mod n)"
  shows "a^k ≡ b^k (mod n) ∀ k :: nat"