lemma product_of_consecutive_integers:
  fixes a b :: nat
  assumes "a * b = p" and "p prime"
  shows "a = 1 ∧ b = 2 ∨ a = 2 ∧ b = 1"
  by (metis assms prime_def)