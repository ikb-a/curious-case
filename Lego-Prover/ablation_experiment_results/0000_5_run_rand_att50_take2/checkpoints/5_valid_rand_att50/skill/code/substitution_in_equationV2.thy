lemma substitution_in_equation:
  fixes x e a b :: complex
  assumes "x + e = a" and "e = a - x"
  shows "2 * x + e = 2 * x + (a - x)"
proof -
  have "e = a - x" using assms(2) by auto
  thus ?thesis by (simp add: algebra_simps)
qed