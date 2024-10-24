lemma count_natural_terms:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a::nat..<b} = b - a"
proof -
  have "card {a::nat..<b} = b - a" 
    by auto
  then show ?thesis by auto
qed