lemma isolate_variable:
  fixes a b c :: real
  assumes "a + b = c"
  shows "a = c - b"
proof -
  have "c - b + b = c" by (simp add: assms)
  then show "a = c - b" using assms by (simp add: algebra_simps)
qed