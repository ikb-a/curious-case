lemma nonneg_square_sum_general:
  fixes xs :: "real list"
  shows "(\<Sum>x \<in> set xs. x^2) >= 0"
proof (induction xs)
  case Nil
  then show ?case 
    by simp
next
  case (Cons x xs)
  then show ?case 
    by (metis sum_nonneg zero_le_power2)
qed