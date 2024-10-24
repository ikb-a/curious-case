lemma neg_times_commutative:
  fixes x y :: real
  shows "(-1) * (x + y) = (-1) * x + (-1) * y"
proof -
  have "(-1) * (x + y) = - (x + y)" by simp
  also have "... = - x - y" by (simp add: field_simps)
  also have "... = (-1) * x + (-1) * y" by (simp add: field_simps)
  finally show ?thesis .
qed