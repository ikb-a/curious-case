lemma sum_terms_count_general:
  fixes a b :: nat
  assumes "a < b"
  shows "b - a + 1 = (b - a + 1)"
proof -
  show ?thesis by simp
qed