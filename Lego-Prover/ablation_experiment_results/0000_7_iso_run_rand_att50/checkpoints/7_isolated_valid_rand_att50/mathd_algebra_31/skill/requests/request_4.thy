lemma square_nonneg:
  fixes a b :: real
  assumes "a = b" "0 ≤ a" "0 ≤ b"
  shows "a^2 = b^2"