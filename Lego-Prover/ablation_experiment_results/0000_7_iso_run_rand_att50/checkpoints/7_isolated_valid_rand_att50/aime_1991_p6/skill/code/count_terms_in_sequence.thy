lemma count_terms_in_sequence:
  fixes a b :: nat
  assumes "a < b"
  shows "b - a + 1 = (b - a + 1)"
proof -
  have "b - a + 1 = b - a + 1" by simp
  thus ?thesis by simp
qed