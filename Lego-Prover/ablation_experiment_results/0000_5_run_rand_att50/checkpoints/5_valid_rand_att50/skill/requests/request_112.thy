lemma natural_number_constraints:
  fixes n x :: nat
  assumes "x = 73n - 473"
  shows "0 ≤ x ∧ x ≤ 73"