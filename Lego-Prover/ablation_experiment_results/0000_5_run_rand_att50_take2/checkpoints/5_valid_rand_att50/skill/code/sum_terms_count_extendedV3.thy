lemma sum_terms_count_extended:
  fixes n :: nat
  assumes "n > 0"
  shows "card {19::nat..<19+n} = n"
proof -
  have "card {19::nat..<19+n} = n" by auto
  thus ?thesis .
qed