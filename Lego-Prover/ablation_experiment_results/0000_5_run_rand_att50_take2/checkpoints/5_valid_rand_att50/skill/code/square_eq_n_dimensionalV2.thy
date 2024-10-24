lemma square_eq_n_dimensional:
  fixes a b :: "real list"
  assumes "length a = length b" "a = b"
  shows "(\<Sum>i=0..<length a. a ! i^2) = (\<Sum>i=0..<length b. b ! i^2)"
proof -
  have "(\<Sum>i=0..<length a. a ! i^2) = (\<Sum>i=0..<length a. b ! i^2)"
    by (metis assms(2))
  then show ?thesis by (metis assms(2))
qed