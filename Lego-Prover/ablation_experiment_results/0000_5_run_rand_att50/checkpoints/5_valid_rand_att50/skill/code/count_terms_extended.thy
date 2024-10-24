lemma count_terms_extended:
  fixes n :: nat
  assumes "n > 0"
  shows "card {n::nat..<n+73} = 73"
proof -
  have "n + 73 - n = 73" by simp
  thus ?thesis by simp
qed