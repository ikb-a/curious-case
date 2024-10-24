lemma square_root_eq_n:
  fixes a b :: real
  assumes "n > 0"
  shows "sqrt (a * n) = sqrt (b * n) \<longleftrightarrow> a = b"
proof -
  have "sqrt (a * n) = sqrt (b * n) \<longleftrightarrow> a * n = b * n" 
    by auto
  moreover have "a * n = b * n \<longleftrightarrow> a = b" 
    using assms by auto
  ultimately show ?thesis by auto
qed