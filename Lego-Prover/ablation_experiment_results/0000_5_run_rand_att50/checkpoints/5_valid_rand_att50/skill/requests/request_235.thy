lemma product_even_prime:
  fixes a b :: nat
  assumes "a * b = 2"
  shows "a = 1 ∧ b = 2 ∨ a = 2 ∧ b = 1"
  by (metis assms nat_mult_eq_0_iff)