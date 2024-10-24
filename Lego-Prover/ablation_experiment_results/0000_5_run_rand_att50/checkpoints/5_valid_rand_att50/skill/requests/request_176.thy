lemma sum_of_congruences:
  fixes a b m n :: nat
  assumes "a ≡ b (mod m)" "a ≡ c (mod n)"
  shows "∃x. x ≡ a (mod (lcm m n))"