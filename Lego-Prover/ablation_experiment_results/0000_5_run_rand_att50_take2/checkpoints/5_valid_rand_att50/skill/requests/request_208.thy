lemma product_parity:
  fixes a b :: nat
  assumes "a > 0" "b > 0"
  shows "(a mod 2 = 0 \<and> b mod 2 = 1) \<or> (a mod 2 = 1 \<and> b mod 2 = 0)"