lemma product_equals_two:
  fixes a b :: nat
  assumes "a * b = 2"
  shows "a = 1 ∧ b = 2 ∨ a = 2 ∧ b = 1"