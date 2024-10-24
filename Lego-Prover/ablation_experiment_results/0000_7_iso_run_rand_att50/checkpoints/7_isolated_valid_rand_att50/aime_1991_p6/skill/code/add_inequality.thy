lemma add_inequality:
  fixes a b c :: real
  assumes "a < b"
  shows "a + c < b + c"
proof -
  have "a + c < b + c" using assms by simp
  thus ?thesis by simp
qed