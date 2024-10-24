lemma compute_neg_13x:
  fixes x :: real
  assumes "x = (13 - sqrt 131) / 4"
  shows "-13 * x = - (169 - 13 * sqrt 131) / 4"
proof -
  from assms have "x * 4 = 13 - sqrt 131" by (simp add: field_simps)
  thus ?thesis
  proof -
    have "-13 * x = -13 * ((13 - sqrt 131) / 4)" by (simp add: assms)
    also have "... = - (13 * (13 - sqrt 131)) / 4" by (simp add: field_simps)
    finally show ?thesis 
      by (simp add: field_simps)
  qed
qed