lemma sum_product_over_lists:
  fixes a b :: "complex list" and c d :: "complex list"
  shows "(\<Sum>i < length a. a ! i * (\<Sum>j < length b. b ! j)) = 
         (\<Sum>j < length b. b ! j) * (\<Sum>i < length a. a ! i)"
proof -
  have "(\<Sum>i < length a. a ! i * (\<Sum>j < length b. b ! j)) = 
         (\<Sum>j < length b. b ! j) * (\<Sum>i < length a. a ! i)"
    by (metis mult.commute sum_product_distributivity)
  thus ?thesis by simp
qed