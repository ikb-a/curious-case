lemma combine_like_terms:
  fixes a b c d :: real
  shows "(a + b) + (c + d) = (a + c) + (b + d)"
proof -
  have "(a + b) + (c + d) = a + (b + (c + d))" 
    by (metis add.assoc)
  also have "... = a + ((b + c) + d)" 
    by (metis add.assoc)
  also have "... = (a + (b + c)) + d" 
    by (metis add.assoc)
  also have "... = ((a + b) + c) + d" 
    by (metis add.assoc)
  finally have "((a + b) + c) + d = (a + c) + (b + d)" 
    by auto
  thus ?thesis 
    by (simp add: add.assoc)
qed