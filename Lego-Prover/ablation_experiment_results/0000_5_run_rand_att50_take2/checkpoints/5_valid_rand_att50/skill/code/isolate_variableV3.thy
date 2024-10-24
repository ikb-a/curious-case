lemma isolate_variable:
  fixes a b c :: real
  assumes "a + b = c"
  shows "a = c - b"
proof -
  have "a = c - b" using assms by (simp add: diff_add_eq)
  thus ?thesis by simp
qed