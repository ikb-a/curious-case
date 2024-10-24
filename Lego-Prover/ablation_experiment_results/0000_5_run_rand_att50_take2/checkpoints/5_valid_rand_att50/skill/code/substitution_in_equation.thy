lemma substitution_in_equation:
  fixes x e a b :: complex
  assumes "x + e = a" and "e = a - x"
  shows "2 * x + e = 2 * x + (a - x)"
proof -
  have "e = a - x" using assms(2) by auto
  then have "2 * x + e = 2 * x + (a - x)" by simp
  thus ?thesis by (simp add: assms(1))
qed