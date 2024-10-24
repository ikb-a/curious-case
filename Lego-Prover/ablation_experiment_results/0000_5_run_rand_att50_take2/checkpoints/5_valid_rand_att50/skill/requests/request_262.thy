lemma least_non_negative_solution:
  fixes a b m n :: nat
  assumes "a < m" "b < n"
  shows "∃x. x mod m = a ∧ x mod n = b"