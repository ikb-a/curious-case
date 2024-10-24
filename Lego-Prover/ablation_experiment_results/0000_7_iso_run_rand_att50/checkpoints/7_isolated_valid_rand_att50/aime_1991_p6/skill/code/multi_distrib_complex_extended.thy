lemma multi_distrib_complex_extended:
  fixes a b :: complex
  fixes xs ys :: "complex list"
  shows "(a + b) * complex_sum xs = a * complex_sum xs + b * complex_sum xs"
proof (induction xs)
  case Nil
  then show ?case 
    by (auto simp: field_simps)
next
  case (Cons x xs)
  then show ?case 
    by (auto simp: field_simps)
qed