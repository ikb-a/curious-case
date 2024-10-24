lemma product_of_consecutive_integers:
  fixes a b :: nat
  assumes "a > 0" "b > 0"
  shows "prime (a * b) \<longleftrightarrow> (a = 1 \<and> b = p) \<or> (a = p \<and> b = 1)"