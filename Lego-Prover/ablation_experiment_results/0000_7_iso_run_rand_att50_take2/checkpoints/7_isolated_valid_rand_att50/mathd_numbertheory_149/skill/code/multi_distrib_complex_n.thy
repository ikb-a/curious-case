lemma multi_distrib_complex_n:
  fixes a b :: complex
  fixes xs ys :: "complex list"
  shows "(a + b) * (complex_sum xs + complex_sum ys) = a * complex_sum xs + b * complex_sum xs + a * complex_sum ys + b * complex_sum ys"
proof (induction xs)
  case Nil
  then show ?case 
    by (auto simp: field_simps)
next
  case (Cons x xs)
  then show ?case 
    by (auto simp: algebra_simps)
qed