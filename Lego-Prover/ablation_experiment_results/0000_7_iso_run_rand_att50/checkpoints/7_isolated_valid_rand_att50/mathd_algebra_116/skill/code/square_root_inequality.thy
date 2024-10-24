lemma square_root_inequality:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt(a) < sqrt(b) \<longleftrightarrow> a < b"
proof -
  have "sqrt(a) < sqrt(b) \<longrightarrow> a < b" 
    using assms by auto 
  moreover have "a < b \<longrightarrow> sqrt(a) < sqrt(b)" 
    using assms by auto 
  ultimately show ?thesis by blast
qed