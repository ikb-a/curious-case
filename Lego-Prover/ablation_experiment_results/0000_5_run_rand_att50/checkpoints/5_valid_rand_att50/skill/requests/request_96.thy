lemma even_odd_product:
  fixes a b :: nat
  assumes "a mod 2 = 0 \<or> b mod 2 = 0"
  shows "even (a * b)"