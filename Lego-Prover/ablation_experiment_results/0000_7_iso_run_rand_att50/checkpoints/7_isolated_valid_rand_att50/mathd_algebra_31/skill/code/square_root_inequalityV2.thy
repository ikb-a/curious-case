lemma square_root_inequality:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "a < b \<longrightarrow> sqrt a < sqrt b"
proof -
  have "sqrt a < sqrt b \<longleftrightarrow> a < b"
    using assms by auto
  thus ?thesis by simp
qed