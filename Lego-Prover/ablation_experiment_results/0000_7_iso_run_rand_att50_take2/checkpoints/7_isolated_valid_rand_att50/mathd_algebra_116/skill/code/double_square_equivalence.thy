lemma double_square_equivalence:
  fixes x y :: real
  shows "2 * x^2 = 2 * (y^2) \<longleftrightarrow> x^2 = y^2"
proof -
  have "2 * x^2 = 2 * (y^2) \<longleftrightarrow> x^2 = y^2" 
    by auto
  thus ?thesis by simp
qed