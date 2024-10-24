lemma square_root_identity:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a = a \<longleftrightarrow> a = 0 \<or> a = 1"