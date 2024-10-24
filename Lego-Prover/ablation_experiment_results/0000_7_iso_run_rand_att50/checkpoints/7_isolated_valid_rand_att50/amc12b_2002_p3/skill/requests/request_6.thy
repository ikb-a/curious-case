lemma solve_product_eq:
  fixes a b :: nat
  assumes "a * b = 2"
  shows "a = 1 \<and> b = 2 \<or> a = 2 \<and> b = 1"