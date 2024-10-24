lemma count_terms_general:
  fixes a b c :: nat
  assumes "a + b + 1 = c"
  shows "c = a + b + 1"
proof -
  have "c = a + b + 1" using assms by simp
  thus ?thesis by simp
qed