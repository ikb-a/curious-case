lemma sum_terms_count:
  fixes d :: nat
  shows "card {19::nat..<19 + d} = d" 
proof -
  have "19 + d - 19 = d" by simp
  then show ?thesis by auto
qed