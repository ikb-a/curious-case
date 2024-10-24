lemma equivalence_relation_mod:
  fixes a b :: int
  assumes "a ≡ b (mod m)"
  shows "a^2 ≡ b^2 (mod m)"