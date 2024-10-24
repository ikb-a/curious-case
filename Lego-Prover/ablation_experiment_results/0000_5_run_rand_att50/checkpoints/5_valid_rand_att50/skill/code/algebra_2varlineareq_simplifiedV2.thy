lemma algebra_2varlineareq_simplified:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "x = -4 \<Longrightarrow> e = 11"
proof -
  assume "x = -4"
  then have "e = 7 - (-4)" using h0 by simp
  thus "e = 11" by simp
qed