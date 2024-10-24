lemma fixed_point:
  fixes f :: "real \<Rightarrow> real"
  assumes "f x = x"
  shows "x = f x"
proof -
  have "f x = x" by (rule assms)
  thus ?thesis by simp
qed