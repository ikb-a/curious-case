theorem algebra_2varlineareq_xpeeq7_2xpeeqc_eeq11_xeqn4:
  fixes x e c :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = c"
  shows "e = 7 - x \<and> x + 7 = c"
proof -
  have eq1: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq2: "2 * x + (7 - x) = c" using h1 eq1 by simp
  have eq3: "x + 7 = c" using eq2 by (simp add: field_simps)
  thus "e = 7 - x \<and> x + 7 = c" by (simp add: eq1 eq3)
qed