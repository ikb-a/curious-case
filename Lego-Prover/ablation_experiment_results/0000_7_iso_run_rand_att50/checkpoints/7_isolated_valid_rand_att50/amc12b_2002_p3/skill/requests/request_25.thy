lemma integer_solution:
  fixes a b :: nat
  assumes "a * b = 2"
  shows "a = 1 ∧ b = 2 ∨ a = 2 ∧ b = 1"
  by (metis mult.commute)