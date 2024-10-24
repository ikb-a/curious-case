lemma combine_like_terms:
  fixes a b c d :: real
  shows "(a + b) + (c + d) = (a + c) + (b + d)"
proof -
  have "(a + b) + (c + d) = a + (b + (c + d))" 
    by (simp add: ac_simps)
  also have "... = a + ((b + c) + d)" 
    by (simp add: ac_simps)
  also have "... = (a + (b + c)) + d" 
    by (simp add: ac_simps)
  also have "... = ((a + b) + c) + d" 
    by (simp add: ac_simps)
  finally show ?thesis 
    by (simp add: ac_simps)
qed