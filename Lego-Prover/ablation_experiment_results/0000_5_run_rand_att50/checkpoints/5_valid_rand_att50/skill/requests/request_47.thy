lemma chinese_remainder_theorem:
  fixes a b :: nat
  assumes "a mod m1 = r1" "a mod m2 = r2" "m1" and "m2" are coprime
  shows "∃x. x mod (m1 * m2) = r1 ∧ x mod m2 = r2"