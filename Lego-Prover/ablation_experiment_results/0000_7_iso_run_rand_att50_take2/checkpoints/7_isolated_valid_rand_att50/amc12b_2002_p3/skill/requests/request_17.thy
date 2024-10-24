lemma unique_positive_solution:
  fixes k :: nat
  assumes "k > 0"
  shows "∃! n. (n - 1) * (n - 2) = k ⟷ (n = 3 ∧ k = 2)"