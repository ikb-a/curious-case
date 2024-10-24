lemma sum_terms_count:
  fixes a b :: nat
  assumes "b = 91" "a = 19"
  shows "b - a + 1 = 73"
proof -
  have "b - a + 1 = 91 - 19 + 1" using assms by simp
  thus ?thesis by simp
qed