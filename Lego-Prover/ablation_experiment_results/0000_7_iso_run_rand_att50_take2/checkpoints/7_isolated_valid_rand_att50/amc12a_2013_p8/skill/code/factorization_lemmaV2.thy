lemma factorization_lemma:
  fixes a b c d :: real
  assumes "a \<noteq> b"
  shows "(a - b) * (c + d) = 0 \<longleftrightarrow> c + d = 0"
proof -
  have "((a - b) * (c + d) = 0) \<longleftrightarrow> (c + d = 0 \<or> a - b = 0)" 
    by (metis assms mult_eq_0_iff)
  thus ?thesis 
    by (simp add: assms)
qed