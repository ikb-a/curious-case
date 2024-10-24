lemma chinese_remainder:
  fixes a1 a2 m1 m2 :: nat
  assumes "m1 ∤ m2" "a1 ≡ a2 (mod m2)"
  shows "∃x. x ≡ a1 (mod m1) ∧ x ≡ a2 (mod m2)"