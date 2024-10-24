lemma square_root_eq_addition:
  fixes a b c d :: real
  assumes "a = b" and "c = d" and "a >= 0" and "c >= 0"
  shows "sqrt (a + c) = sqrt (b + d)"
proof -
  have "sqrt (a + c) = sqrt (b + d)" using assms by simp
  thus ?thesis by simp
qed