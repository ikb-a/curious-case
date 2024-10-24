lemma count_terms:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a::nat..<b} = b - a"
  by (simp add: assms)