lemma square_eq_n_dimensional:
  fixes a b :: "real list"
  assumes "length a = n" "length b = n" "a = b"
  shows "(\<Sum>i=0..(n-1). a ! i^2) = (\<Sum>i=0..(n-1). b ! i^2)"
proof -
  have "(\<Sum>i=0..(n-1). a ! i^2) = (\<Sum>i=0..(n-1). b ! i^2)"
  proof (induction n)
    case 0
    then show ?case by (metis assms(3))
  next
    case (Suc n)
    then have "a ! n = b ! n" using assms(3) by (metis nth_equalityI)
    then show ?case
      by (metis assms(3))
  qed
  thus ?thesis by simp
qed