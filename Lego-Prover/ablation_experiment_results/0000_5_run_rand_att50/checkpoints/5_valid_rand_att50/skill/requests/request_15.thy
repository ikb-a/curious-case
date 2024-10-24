lemma product_of_integers:
  fixes a b :: nat
  assumes "a * b = p" and "prime p"
  shows "a = 1 ∧ b = p ∨ a = p ∧ b = 1"
  by (metis assms prime_def)