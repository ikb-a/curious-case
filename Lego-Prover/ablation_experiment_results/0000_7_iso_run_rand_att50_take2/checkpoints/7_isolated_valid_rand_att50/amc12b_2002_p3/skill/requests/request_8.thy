lemma prime_even_product:
  fixes a b :: nat
  assumes "a * b = 2" and "a > 0" and "b > 0"
  shows "a = 1 \<and> b = 2 \<or> a = 2 \<and> b = 1"