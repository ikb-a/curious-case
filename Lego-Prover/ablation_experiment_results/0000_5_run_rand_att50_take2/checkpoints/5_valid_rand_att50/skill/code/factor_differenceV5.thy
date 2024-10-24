lemma factor_difference:
  fixes x y :: real
  assumes "x \<noteq> y"
  shows "x - y = (x - y) * 1"
proof -
  have "x - y = (x - y) * 1" 
    by (simp add: algebra_simps)
  thus ?thesis by simp
qed