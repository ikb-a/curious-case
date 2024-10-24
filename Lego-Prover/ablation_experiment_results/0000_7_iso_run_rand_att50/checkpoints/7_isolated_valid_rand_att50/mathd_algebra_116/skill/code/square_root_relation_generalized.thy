lemma square_root_relation_generalized:
  fixes x y :: real
  assumes "x >= 0" "y >= 0"
  shows "sqrt(x) = sqrt(y) \<longleftrightarrow> x = y"
proof -
  have "sqrt(x) = sqrt(y) \<longrightarrow> x = y"
    using assms by auto
  moreover have "x = y \<longrightarrow> sqrt(x) = sqrt(y)"
    using assms by auto
  ultimately show ?thesis by blast
qed