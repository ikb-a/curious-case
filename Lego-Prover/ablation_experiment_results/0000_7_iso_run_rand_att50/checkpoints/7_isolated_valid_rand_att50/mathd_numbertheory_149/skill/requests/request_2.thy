lemma nat_inequality:
  fixes a b :: nat
  assumes "a < b"
  shows "a + 1 ≤ b"