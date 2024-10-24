lemma count_terms:
  fixes a b :: nat
  assumes "a + b = 73"
  shows "b = 73 - a"
proof -
  show ?thesis using assms by simp
qed