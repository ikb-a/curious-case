lemma sum_terms_count_non_empty:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a::nat..<b} > 0"
proof -
  have "b - a > 0" using assms by auto
  thus ?thesis using assms by auto
qed