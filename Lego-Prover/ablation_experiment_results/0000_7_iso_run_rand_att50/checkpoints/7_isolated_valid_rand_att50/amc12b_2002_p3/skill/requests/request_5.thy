lemma even_product_prime:
  assumes "p = a * b" and "p prime" and "even p"
  shows "p = 2 \<and> (a = 1 \<or> b = 1)"