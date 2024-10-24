lemma sum_floor_terms_count:
  shows "card {19::nat..<92} = 73"
proof -
  have "card {19::nat..<92} = 92 - 19" 
    by auto
  also have "... = 73" 
    by simp
  finally show ?thesis by simp
qed