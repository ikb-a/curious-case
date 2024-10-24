lemma sum_product_distributivity_extended:
  fixes a b :: "complex list" and c d :: "complex list" and n :: nat
  assumes "length a = n" "length b = n" "length c = n" "length d = n"
  shows "(\<Sum>i < n. a ! i) * (\<Sum>j < n. b ! j) * (\<Sum>k < n. c ! k) * (\<Sum>l < n. d ! l) =
         (\<Sum>i < n. a ! i * (\<Sum>j < n. b ! j) * (\<Sum>k < n. c ! k) * (\<Sum>l < n. d ! l))"
proof -
  have "(\<Sum>i < n. a ! i) * (\<Sum>j < n. b ! j) = 
         (\<Sum>i < n. a ! i) * (\<Sum>j < n. b ! j)" 
    by (metis sum_distrib_right)
  thus ?thesis by (simp add: sum_distrib_right)
qed