lemma product_of_two_integers:
  fixes a b :: nat
  assumes "a > 0" "b > 0"
  shows "prime (a * b) \<longleftrightarrow> (a = 1 ∧ b = p) ∨ (a = p ∧ b = 1)"