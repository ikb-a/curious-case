lemma sum_terms_count_generalized:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a::nat..<b} = b - a"
proof -
  have "card {a..<b} = b - a" by auto
  then show ?thesis using assms by simp
qed