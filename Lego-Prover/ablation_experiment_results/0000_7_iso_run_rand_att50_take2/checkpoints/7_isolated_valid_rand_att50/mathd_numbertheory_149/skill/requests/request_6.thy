lemma chinese_remainder_theorem:
  fixes a b c d :: nat
  assumes "a < m" "b < n" "m coprime to n"
  shows "∃x. x mod m = a ∧ x mod n = b"