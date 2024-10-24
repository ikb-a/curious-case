lemma prime_product:
  fixes a b :: nat
  assumes "prime (a * b)" "a > 1" "b > 1"
  shows "False"