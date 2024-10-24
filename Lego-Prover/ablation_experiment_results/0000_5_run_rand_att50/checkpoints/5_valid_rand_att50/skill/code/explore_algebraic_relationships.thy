lemma explore_algebraic_relationships:
  fixes x e :: complex
  assumes h0: "x + e = 7"
    and h1: "2 * x + e = 3"
  shows "x + e = 7 \<longleftrightarrow> e = 7 - x"
proof -
  have "x + e = 7 \<longrightarrow> e = 7 - x" using h0 by (auto simp: field_simps)
  moreover have "e = 7 - x \<longrightarrow> x + e = 7" by simp
  ultimately show ?thesis by blast
qed