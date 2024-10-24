lemma algebra_2varlinear_solve:
  fixes x e :: complex
  assumes "x + e = a" and "2 * x + e = b"
  shows "e = a - x \<and> x = (b - a) / 1"
proof -
  have e_eq: "e = a - x" using assms(1) by (auto simp: field_simps)
  have substitution: "2 * x + (a - x) = b" using e_eq assms(2) by simp
  have simplified_eq: "x + a = b" using substitution by (simp add: field_simps)
  thus ?thesis using e_eq by auto
qed