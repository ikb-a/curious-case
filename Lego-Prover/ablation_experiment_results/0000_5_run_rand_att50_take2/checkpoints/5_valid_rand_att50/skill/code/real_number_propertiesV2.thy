lemma real_number_properties:
  fixes a b c :: real
  shows "a + (b + c) = (a + b) + c"
proof -
  have "b + c = (a + b) + c - a" by (simp add: algebra_simps)
  then show ?thesis by (simp add: algebra_simps)
qed