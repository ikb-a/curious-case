lemma sum_product_distributivity:
  fixes a b :: "complex list" and c d :: "complex list"
  shows "(\<Sum>i < length a. a ! i) * (\<Sum>j < length d. d ! j) = 
         (\<Sum>i < length a. a ! i * (\<Sum>j < length d. d ! j))"
proof -
  have "(\<Sum>i < length a. a ! i) * (\<Sum>j < length d. d ! j) = 
         (\<Sum>j < length d. d ! j) * (\<Sum>i < length a. a ! i)"
    by auto
  thus ?thesis by (metis sum_distrib_right)
qed