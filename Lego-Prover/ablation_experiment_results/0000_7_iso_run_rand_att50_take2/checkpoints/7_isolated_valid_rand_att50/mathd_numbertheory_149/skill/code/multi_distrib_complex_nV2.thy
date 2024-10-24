lemma multi_distrib_complex_n:
  fixes a b :: complex
  fixes cs :: "complex list"
  shows "(a + b) * complex_sum cs = a * complex_sum cs + b * complex_sum cs"
proof (induction cs)
  case Nil
  then show ?case 
    by (auto simp: field_simps)
next
  case (Cons c cs)
  then show ?case 
    by (auto simp: algebra_simps)
qed