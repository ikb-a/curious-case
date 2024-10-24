lemma rearranging_equation:
  fixes a b c :: real
  shows "b = a - c \<longleftrightarrow> a = b + c"
proof -
  have "b = a - c \<Longrightarrow> a = b + c"
    by (simp add: field_simps)
  moreover have "a = b + c \<Longrightarrow> b = a - c"
    by (simp add: field_simps)
  ultimately show "b = a - c \<longleftrightarrow> a = b + c" by blast
qed