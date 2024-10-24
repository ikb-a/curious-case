lemma linear_combination:
  fixes x y e :: complex
  assumes h0: "x + e = a"
    and h1: "2 * x + e = b"
  shows "e = a - x \<and> x = (b - a) / 1"
proof -
  have "e = a - x" using h0 by (auto simp: field_simps)
  then have "2 * x + (a - x) = b" using h1 by simp
  then have "x + a = b" by auto
  then show ?thesis using h0 by (auto simp: field_simps)
qed