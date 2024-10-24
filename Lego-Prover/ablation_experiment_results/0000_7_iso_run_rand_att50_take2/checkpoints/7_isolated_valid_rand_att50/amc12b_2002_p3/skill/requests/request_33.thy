lemma product_even_odd:
  fixes a b :: nat
  assumes "a > 0" "b > 0"
  shows "(even a \<and> odd b) \<or> (odd a \<and> even b) \<Longrightarrow> even (a * b)"