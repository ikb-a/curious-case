lemma count_terms_range:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a::nat..<b} = b - a"
proof -
  have "card {a::nat..<b} = b - a" by simp
  then show ?thesis using assms by simp
qed