lemma sum_terms_count_extended:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a::nat..<b} = b - a"
proof -
  have "card {a::nat..<b} = b - a"
    using assms by auto
  thus ?thesis by simp
qed