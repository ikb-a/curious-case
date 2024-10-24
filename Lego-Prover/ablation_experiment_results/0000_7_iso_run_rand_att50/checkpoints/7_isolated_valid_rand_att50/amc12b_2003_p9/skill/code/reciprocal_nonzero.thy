lemma reciprocal_nonzero:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "1 / a = (1 * a) / (a * a)"
proof -
  have "1 / a = (1 * a) / (a * a)" by (simp add: assms)
  thus ?thesis by simp
qed