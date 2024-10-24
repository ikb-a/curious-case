lemma product_prime_condition:
  fixes a b :: nat
  assumes "a > 0" "b > 0"
  shows "prime (a * b) \<longleftrightarrow> (a = 1 ∧ b = p) ∨ (a = p ∧ b = 1)"
  where "p" is a prime number