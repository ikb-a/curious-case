lemma factor_difference:
  fixes x y :: real
  assumes "x \<noteq> y"
  shows "x - y = (x - y) * 1"
proof -
  have "x - y = (x - y) * 1 + 0" 
    by (simp add: algebra_simps)
  also have "... = (x - y) * 1 + (0 * 1)" 
    by (simp)
  also have "... = (x - y) * 1 + 0" 
    by (simp)
  finally show ?thesis by simp
qed