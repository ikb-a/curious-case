lemma even_product:
  fixes a b :: nat
  assumes "a > 0" "b > 0"
  shows "(a mod 2 = 0) \<or> (b mod 2 = 0) \<Longrightarrow> (a * b mod 2 = 0)"