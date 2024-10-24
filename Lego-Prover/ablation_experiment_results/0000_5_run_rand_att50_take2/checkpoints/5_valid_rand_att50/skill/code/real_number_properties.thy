lemma real_number_properties:
  fixes a b c :: real
  shows "a + (b + c) = (a + b) + c"
proof -
  have "b + c = (a + b) + c - a" by (simp add: algebra_simps)
  then have "a + (b + c) = a + ((a + b) + c - a)" by simp
  also have "... = (a + (a + b)) + c - a" by (simp add: algebra_simps)
  also have "... = (a + b) + c" by (simp add: algebra_simps)
  finally show ?thesis by simp
qed