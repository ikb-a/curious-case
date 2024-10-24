lemma product_is_prime:
  fixes a b :: nat
  assumes "a > 0" "b > 0" "a * b = p" "prime p"
  shows "p = 2 \<and> (a = 1 \<or> b = 1)"