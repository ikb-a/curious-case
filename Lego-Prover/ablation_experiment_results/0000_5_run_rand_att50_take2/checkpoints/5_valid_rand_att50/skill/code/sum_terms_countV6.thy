lemma sum_terms_count:
  shows "card {19::nat..<92} = 73"
proof -
  have "card {19::nat..<92} = 92 - 19" by auto
  then show ?thesis by simp
qed