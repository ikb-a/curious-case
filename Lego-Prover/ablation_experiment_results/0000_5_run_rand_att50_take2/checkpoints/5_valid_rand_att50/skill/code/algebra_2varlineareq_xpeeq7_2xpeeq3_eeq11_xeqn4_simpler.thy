lemma algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_simpler:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "x + e = 7 \<Longrightarrow> 2 * x + e = 3 \<Longrightarrow> e = 11 \<and> x = -4"
  using h0 h1 algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4 by simp