lemma negation_property:
  fixes a b :: real
  shows "-(a + b) = -a + -b"
proof -
  have "-(a + b) = -a + -b" by (simp add: algebra_simps)
  then show ?thesis by simp
qed