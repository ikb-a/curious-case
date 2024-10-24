lemma rearranging_equation:
  fixes a b c :: real
  shows "b = a - c \<longleftrightarrow> a = b + c"
proof -
  have "b = a - c \<longrightarrow> a = b + c" 
    by (simp add: field_simps)
  have "a = b + c \<longrightarrow> b = a - c" 
    by (simp add: field_simps)
  show ?thesis 
    by auto
qed