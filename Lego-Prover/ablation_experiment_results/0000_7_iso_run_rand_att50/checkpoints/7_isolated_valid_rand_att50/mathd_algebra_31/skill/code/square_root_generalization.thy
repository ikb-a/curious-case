lemma square_root_generalization:
  fixes a b :: real
  assumes "a = b" "a >= 0" "b >= 0"
  shows "sqrt a = sqrt b" and "sqrt (a + 1) = sqrt (b + 1)"
proof -
  show "sqrt a = sqrt b" using square_root_nonneg assms by simp
  show "sqrt (a + 1) = sqrt (b + 1)" using assms by simp
qed