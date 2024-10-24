lemma count_terms:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a::nat..<b} = b - a"
proof -
  have "card {a..<b} = b - a"
    by (simp add: card_of_nat)
  then show ?thesis using assms by simp
qed