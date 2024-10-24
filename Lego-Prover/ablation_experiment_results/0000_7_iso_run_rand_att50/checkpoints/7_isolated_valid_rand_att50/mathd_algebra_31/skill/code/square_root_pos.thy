lemma square_root_pos:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt a = sqrt b \<longleftrightarrow> a = b"
proof -
  have "sqrt a = sqrt b \<longleftrightarrow> a = b" 
    using assms(1) assms(2) by auto 
  then show ?thesis by simp
qed