lemma congruence_manipulation:
  fixes a b c d :: nat
  assumes "a ≡ b (mod m)" and "c ≡ d (mod n)"
  shows "a + c ≡ b + d (mod lcm m n)"