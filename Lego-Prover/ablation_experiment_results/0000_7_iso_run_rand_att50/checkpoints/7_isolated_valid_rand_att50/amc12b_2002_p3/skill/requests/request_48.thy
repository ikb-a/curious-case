lemma prime_even_product:
  assumes "prime p" and "p = a * b"
  shows "p = 2 \<or> a = 1 \<or> b = 1"