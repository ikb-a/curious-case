lemma neg_product:
  fixes a b :: real
  shows "-(a * b) = -a * b"
proof -
  have "-(a * b) = -1 * (a * b)" by (simp add: algebra_simps)
  also have "... = (-1 * a) * b" by (simp add: algebra_simps)
  finally show ?thesis by simp
qed