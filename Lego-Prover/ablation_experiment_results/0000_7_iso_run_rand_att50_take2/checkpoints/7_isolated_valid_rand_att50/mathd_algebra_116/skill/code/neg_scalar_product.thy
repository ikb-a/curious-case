lemma neg_scalar_product:
  fixes a :: real
  fixes xs :: "real list"
  shows "(-a) * sum_list xs = sum_list (map (\<lambda>x. -a * x) xs)"
proof (induction xs)
  case Nil
  then show ?case 
    by simp
next
  case (Cons x xs)
  then show ?case 
    by (simp add: field_simps)
qed