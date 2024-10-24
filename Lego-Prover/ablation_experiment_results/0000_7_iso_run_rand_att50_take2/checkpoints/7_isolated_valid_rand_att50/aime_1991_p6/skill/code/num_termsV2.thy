lemma num_terms:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a::nat..<b} = b - a"
proof -
  have "card {a::nat..<b} = b - a" 
    by (simp add: atLeastLessThan_iff)
  thus ?thesis by simp
qed