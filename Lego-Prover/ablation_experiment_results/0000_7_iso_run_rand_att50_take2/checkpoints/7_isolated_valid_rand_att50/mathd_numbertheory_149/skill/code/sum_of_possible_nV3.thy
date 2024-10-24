lemma sum_of_possible_N:
  assumes "finite A" 
  shows "(\<Sum>i\<in>A. (21 + 45)) = card A * (21 + 45)"
proof -
  have "(\<Sum>i\<in>A. (21 + 45)) = card A * (21 + 45)" 
    by auto
  thus ?thesis by simp
qed