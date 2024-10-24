lemma combine_like_terms:
  fixes a b c d :: real
  shows "a + b + c + d = (a + c) + (b + d)"
proof -
  have "a + b + c + d = (a + c) + (b + d)" by (simp add: add.assoc)
  thus ?thesis by simp
qed