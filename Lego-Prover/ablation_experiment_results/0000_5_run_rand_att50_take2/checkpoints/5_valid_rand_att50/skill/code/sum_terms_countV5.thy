lemma sum_terms_count:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a::nat..<b} = b - a"
proof -
  have "card {a ..< b} = b - a" by (simp add: card_atLeastLessThan)
  then show ?thesis by simp
qed