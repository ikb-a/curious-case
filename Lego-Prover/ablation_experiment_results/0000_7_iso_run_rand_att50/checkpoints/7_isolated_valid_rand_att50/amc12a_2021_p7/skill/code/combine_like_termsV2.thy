lemma combine_like_terms:
  fixes a b c d :: real
  shows "a + b + c + d = (a + c) + (b + d)"
proof -
  have "a + b + c + d = (a + c) + (b + d)"
  proof -
    have "a + b + c + d = a + (b + c + d)" by auto
    also have "... = a + ((b + d) + c)" by auto
    also have "... = (a + c) + (b + d)" by auto
    finally show ?thesis by simp
  qed
  thus ?thesis by simp
qed