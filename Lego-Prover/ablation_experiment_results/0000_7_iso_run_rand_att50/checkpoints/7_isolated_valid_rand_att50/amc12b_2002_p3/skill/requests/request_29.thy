lemma product_of_consecutive_integers:
  fixes a b :: nat
  assumes "b = a + 1"
  shows "prime (a * b) \<longleftrightarrow> (a = 1 \<and> b = 2) \<or> (a = 2 \<and> b = 3)"
  by (simp add: assms)