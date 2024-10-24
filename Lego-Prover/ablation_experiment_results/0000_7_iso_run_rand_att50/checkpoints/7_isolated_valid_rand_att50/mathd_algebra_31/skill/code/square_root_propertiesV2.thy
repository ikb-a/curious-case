lemma square_root_properties:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt a = sqrt b \<longleftrightarrow> a = b"
proof -
  have "sqrt a = sqrt b \<Longrightarrow> a = b" 
    using assms(1) assms(2) by auto
  have "a = b \<Longrightarrow> sqrt a = sqrt b" 
    using assms(1) assms(2) by simp
  show ?thesis
    by auto
qed