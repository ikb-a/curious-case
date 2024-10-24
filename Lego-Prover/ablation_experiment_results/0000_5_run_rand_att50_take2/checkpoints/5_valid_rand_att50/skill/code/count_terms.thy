lemma count_terms:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a::nat..<b} = b - a"
proof -
  have "card {a::nat..<b} = b - a" using assms by (auto simp add: card_insert_if)
  thus ?thesis by simp
qed