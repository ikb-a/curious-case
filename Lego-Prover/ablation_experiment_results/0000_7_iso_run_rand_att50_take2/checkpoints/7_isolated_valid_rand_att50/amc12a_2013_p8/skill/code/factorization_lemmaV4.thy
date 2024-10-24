lemma factorization_lemma:
  fixes a b c d :: real
  assumes "a \<noteq> b"
  shows "(a - b) * (c + d) = 0 \<longleftrightarrow> c + d = 0"
proof -
  have "(a - b) * (c + d) = 0 \<longleftrightarrow> (c + d) = 0" 
    using assms by auto
  thus ?thesis by simp
qed