lemma product_prime:
  fixes a b :: nat
  assumes "a > 0" and "b > 0" and "a * b = p" and "prime p"
  shows "a = 1 \<or> b = 1"