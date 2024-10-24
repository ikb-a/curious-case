lemma sum_terms_count_range:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a..b} = b - a + 1"
proof -
  have "card {a..b} = b - a + 1" using assms
    by (auto simp: atMost_def atLeast_def)
  thus ?thesis by simp
qed