lemma sum_of_squares:
  fixes xs :: "real list"
  shows "square_expression_multi xs = sum_list (map (\<lambda>x. x^2) xs)"
proof (induction xs)
  case Nil
  then show ?case by simp
next
  case (Cons x xs)
  then show ?case 
    by (auto)
qed