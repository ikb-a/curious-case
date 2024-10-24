lemma square_eq_dimension:
  fixes a b :: "real list"
  assumes "length a = length b"
  and "(\<forall>i. a ! i = b ! i)"
  shows "(\<Sum>i. a ! i^2) = (\<Sum>i. b ! i^2)"
proof -
  have "\<forall>i. a ! i^2 = b ! i^2" using assms(2) by auto
  then show ?thesis by auto
qed