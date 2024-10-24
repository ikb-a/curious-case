lemma product_is_prime:
  fixes n m :: nat
  assumes "n > 0" "m > 0" "prime (n * m)"
  shows "n = 1 \<or> m = 1"