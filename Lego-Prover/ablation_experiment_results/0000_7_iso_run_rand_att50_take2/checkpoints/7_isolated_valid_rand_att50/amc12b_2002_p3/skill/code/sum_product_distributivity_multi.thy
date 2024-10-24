lemma sum_product_distributivity_multi:
  fixes a :: "complex list" and b :: "complex list" and c :: "complex list" and d :: "complex list"
  shows "(\<Sum>i < length a. a ! i) * (\<Sum>j < length b. b ! j) * (\<Sum>k < length c. c ! k) * (\<Sum>l < length d. d ! l) = 
         (\<Sum>i < length a. a ! i) * (\<Sum>j < length b. b ! j) * (\<Sum>k < length c. c ! k) * (\<Sum>l < length d. d ! l)"
proof -
  have "(\<Sum>i < length a. a ! i) * (\<Sum>j < length b. b ! j) * (\<Sum>k < length c. c ! k) * (\<Sum>l < length d. d ! l) = 
         (\<Sum>i < length a. a ! i) * (\<Sum>j < length b. b ! j) * (\<Sum>k < length c. c ! k) * (\<Sum>l < length d. d ! l)" 
    by (metis sum_distrib_right)
  thus ?thesis by (simp add: sum_distrib_right)
qed