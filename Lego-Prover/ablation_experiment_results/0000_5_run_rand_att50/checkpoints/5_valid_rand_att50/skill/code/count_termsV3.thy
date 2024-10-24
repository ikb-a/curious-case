lemma count_terms:
  fixes n :: nat
  assumes "n > 0"
  shows "card {n::nat..<n+73} = 73"
  by simp