lemma number_terms:
  fixes n x :: nat
  assumes "x + (73 - x) = 73"
  shows "x = x"
proof -
  from assms have "73 - x = 73 - x" by simp
  thus ?thesis by simp
qed