lemma factorization_lemma:
  fixes a b c d :: real
  assumes "a \<noteq> b"
  shows "(a - b) * (c + d) = 0 \<longleftrightarrow> c + d = 0"
proof -
  have "(a - b) * (c + d) = 0 \<Longrightarrow> c + d = 0" 
  proof -
    assume "(a - b) * (c + d) = 0"
    then have "c + d = 0" using assms by auto
    thus ?thesis by simp
  qed
  have "c + d = 0 \<Longrightarrow> (a - b) * (c + d) = 0"
  proof -
    assume "c + d = 0"
    then have "(a - b) * 0 = 0" by simp
    thus ?thesis by (metis \<open>c + d = 0\<close>)
  qed
  show "(a - b) * (c + d) = 0 \<longleftrightarrow> c + d = 0"
    by (metis \<open>(a - b) * (c + d) = 0 \<Longrightarrow> c + d = 0\<close> mult_zero_right)
qed