lemma multi_distrib_complex_generalized:
  fixes zs :: "complex list" and ws :: "complex list"
  assumes "length zs = n" "length ws = m"
  shows "(\<Sum>i=0..n. zs!i) * (\<Sum>j=0..m. ws!j) = (\<Sum>i=0..n. zs!i * (\<Sum>j=0..m. ws!j))"
proof -
  have "(\<Sum>i=0..n. zs!i) * (\<Sum>j=0..m. ws!j) = (\<Sum>i=0..n. zs!i * (\<Sum>j=0..m. ws!j))"
    by (metis sum_distrib_right)
  thus ?thesis by auto
qed