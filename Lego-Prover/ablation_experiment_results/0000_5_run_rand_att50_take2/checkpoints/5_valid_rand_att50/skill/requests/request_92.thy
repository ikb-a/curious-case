lemma modular_arithmetic:
  fixes a b :: nat
  assumes "a mod n = b mod n"
  shows "a ≡ b (mod n)"