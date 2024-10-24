lemma real_number_properties:
  fixes a b c :: real
  shows "a + (b + c) = (a + b) + c"
proof -
  have "a + (b + c) = a + (c + b)" by (simp add: algebra_simps)
  also have "... = (a + c) + b" by (simp add: algebra_simps)
  finally show ?thesis by (simp add: algebra_simps)
qed